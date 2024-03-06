#include "Controller.hpp"

#include <QDebug>

namespace AirConditionSitControl {

Controller::Controller(QObject *parent) : QObject{parent} {}

void Controller::clickButton() {
    qDebug() << "Controller test button";
    incrementCounter();
}

int Controller::getCounter() const { return this->counter; }

void Controller::setCounter(int value) {
    this->counter = value;
    emit counterChanged();
}

void Controller::incrementCounter() {
    counter++;
    emit counterChanged();
}

}  // namespace AirConditionSitControl
