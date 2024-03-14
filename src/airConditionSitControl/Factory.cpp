#include "Factory.hpp"

#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "Controller.hpp"

class QQmlApplicationEngine;

namespace AirConditionSitControl {

Factory::Factory(QQmlApplicationEngine &engine) {
    this->createObjects();
    if (controller) {
        engine.rootContext()->setContextProperty("airConditionController", controller.get());
    }
}

Factory::~Factory() = default;

void Factory::createObjects() { this->controller = std::make_unique<Controller>(); }

}  // namespace AirConditionSitControl