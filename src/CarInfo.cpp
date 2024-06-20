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

void CarInfo::setSpeed(int speed)
{
    this->speed = speed;
    emit speedChanged(speed);
}

int CarInfo::getEngineRPM() const
{
    return this->engineRPM;
}

void CarInfo::setEngineRPM(int engineRPM)
{
    this->engineRPM = engineRPM;
    emit engineRPMChanged(engineRPM);
}