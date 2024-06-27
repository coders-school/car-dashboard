#pragma once
#include <QObject>


class CarInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int speed READ getSpeed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int engineRPM READ getEngineRPM WRITE setEngineRPM NOTIFY engineRPMChanged)
    Q_PROPERTY(int fuelLevel READ getFuelLevel WRITE setFuelLevel NOTIFY fuelLevelChanged)
    Q_PROPERTY(int engineTemperature READ getEngineTemperature WRITE setEngineTemperature NOTIFY engineTemperatureChanged)


public:
    explicit CarInfo(QObject *parent = nullptr);

public slots:
    int getSpeed() const;
    void setSpeed(int speed);
    int getEngineRPM() const;
    void setEngineRPM(int engineRPM);
    int getFuelLevel() const;
    void setFuelLevel(int fuelLevel);
    int  getEngineTemperature() const;
    void setEngineTemperature(int engineTemperature);

signals:
    void speedChanged(int);
    void engineRPMChanged(int);
    void fuelLevelChanged(int);
    void engineTemperatureChanged(int);

private:
    int speed{};
    int engineRPM{};
    int fuelLevel{};
    int engineTemperature{};    
};
