#include "Controller.hpp"

#include <QDebug>

namespace AirCondition {

Controller::Controller(QObject *parent) : QObject{parent} {
    QObject::connect(this, &Controller::enableACChanged, [](bool state) { qDebug() << "enableACChanged: " << state; });
}

}  // namespace AirCondition
