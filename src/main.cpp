// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <memory>

#include "airCondition/Controller.hpp"
#include "CarInfo.hpp"
#include "CarControlsInfo.hpp"
#include "app_environment.h"
#include "import_qml_plugins.h"

int main(int argc, char *argv[]) {
    set_qt_environment();

    auto airConditionController = std::make_unique<AirCondition::Controller>();
    auto carInfo = std::make_unique<CarInfo>();
    auto carControlsInfo = std::make_unique<CarControlsInfo>();

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qt/qml/Main/main.qml"_qs);
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("airConditionController", airConditionController.get());
    engine.rootContext()->setContextProperty("carInfo", carInfo.get());
    engine.rootContext()->setContextProperty("carControlsInfo", carControlsInfo.get());

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");

    engine.load(url);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return app.exec();
}
