#include "Controller.hpp"

#include <QDebug>

namespace AirCondition {

Controller::Controller(QObject *parent) : QObject{parent} {
    QObject::connect(this, &Controller::enableACChanged, [](bool state) { qDebug() << "enableACChanged: " << state; });
}

float Controller::getASetTemp() { return this->aSetTemp; }
void Controller::setASetTemp(float temp) {
    this->aSetTemp = temp;
    emit aSetTempChanged(temp);
}

int Controller::getASetFan() { return this->aSetFan; }
void Controller::setASetFan(int fan) {
    this->aSetFan = fan;
    emit aSetFanChanged(fan);
}

}  // namespace AirCondition
