#pragma once
#include <QObject>


class CarControlsInfo : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool checkEngine MEMBER checkEngine NOTIFY checkEngineChanged)
    Q_PROPERTY(bool charging MEMBER charging NOTIFY chargingChanged)
    Q_PROPERTY(bool abs MEMBER abs NOTIFY absChanged)
    Q_PROPERTY(bool cruiseControl MEMBER cruiseControl NOTIFY cruiseControlChanged)
    Q_PROPERTY(bool doorOpen MEMBER doorOpen NOTIFY doorOpenChanged)
    Q_PROPERTY(bool esp MEMBER esp NOTIFY espChanged)
    Q_PROPERTY(bool imobilizer MEMBER imobilizer NOTIFY imobilizerChanged)
    Q_PROPERTY(bool parkingBrake MEMBER parkingBrake NOTIFY parkingBrakeChanged)
    Q_PROPERTY(bool seatBelt MEMBER seatBelt NOTIFY seatBeltChanged)
    Q_PROPERTY(bool sterringFault MEMBER sterringFault NOTIFY sterringFaultChanged)
    Q_PROPERTY(bool antiFog MEMBER antiFog NOTIFY antiFogChanged)

public:
    explicit CarControlsInfo(QObject *parent = nullptr);

signals:
    void checkEngineChanged(bool);
    void chargingChanged(bool);
    void absChanged(bool);
    void cruiseControlChanged(bool);
    void doorOpenChanged(bool);
    void espChanged(bool);
    void imobilizerChanged(bool);
    void parkingBrakeChanged(bool);
    void seatBeltChanged(bool);
    void sterringFaultChanged(bool);
    void antiFogChanged(bool);

private:
    bool checkEngine{};
    bool charging{};
    bool abs{};
    bool cruiseControl{};
    bool doorOpen{};
    bool esp{};
    bool imobilizer{};
    bool parkingBrake{};
    bool seatBelt{};
    bool sterringFault{};
    bool antiFog{};
};
