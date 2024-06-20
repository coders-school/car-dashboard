#pragma once
#include <QObject>


class CarInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int speed READ getSpeed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int engineRPM READ getEngineRPM WRITE setEngineRPM NOTIFY engineRPMChanged)

public:
    explicit CarInfo(QObject *parent = nullptr);

public slots:
    int getSpeed() const;
    void setSpeed(int speed);
    int getEngineRPM() const;
    void setEngineRPM(int engineRPM);

signals:
    void speedChanged(int);
    void engineRPMChanged(int);

private:
    int speed{};
    int engineRPM{};
};
