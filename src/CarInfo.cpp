#include "CarInfo.hpp"
#include <QDebug>

CarInfo::CarInfo(QObject *parent)
:QObject{parent}
{
    // connect(this, &CarInfo::speedChanged, [](int v){qDebug() << v;});
    // connect(this, &CarInfo::engineRPMChanged, [](int v){qDebug() << v;});
}

int CarInfo::getSpeed() const
{
    return this->speed;
}

void CarInfo::setSpeed(int newSpeed)
{
    this->speed = newSpeed;
    emit speedChanged(newSpeed);
}

int CarInfo::getEngineRPM() const
{
    return this->engineRPM;
}

void CarInfo::setEngineRPM(int newEngineRPM)
{
    this->engineRPM = newEngineRPM;
    emit engineRPMChanged(newEngineRPM);
}

int CarInfo::getFuelLevel() const
{
    return this->fuelLevel;
}

void CarInfo::setFuelLevel(int newFuelLevel)
{
    this->fuelLevel = newFuelLevel;
    emit fuelLevelChanged(newFuelLevel);
}
int CarInfo::getEngineTemperature() const
{
    return engineTemperature;
}

void CarInfo::setEngineTemperature(int newEngineTemperature)
{
    this->engineTemperature = newEngineTemperature;
    emit engineTemperatureChanged(newEngineTemperature);
}
