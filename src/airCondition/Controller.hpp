#pragma once

#include <QObject>

namespace AirCondition {

class Controller : public QObject {
    Q_OBJECT
    Q_PROPERTY(bool enableAC MEMBER enableAC NOTIFY enableACChanged FINAL)
    Q_PROPERTY(bool heatingRear MEMBER heatingRear NOTIFY heatingRearChanged FINAL)
    Q_PROPERTY(bool circulation MEMBER circulation NOTIFY circulationChanged FINAL)
    Q_PROPERTY(bool heatingFront MEMBER heatingFront NOTIFY heatingFrontChanged FINAL)
    Q_PROPERTY(bool faceAirflow MEMBER faceAirflow NOTIFY faceAirflowChanged FINAL)
    Q_PROPERTY(bool feetAirflow MEMBER feetAirflow NOTIFY feetAirflowChanged FINAL)

public:
    explicit Controller(QObject *parent = nullptr);

signals:
    void enableACChanged(bool state);
    void heatingRearChanged(bool state);
    void circulationChanged(bool state);
    void heatingFrontChanged(bool state);
    void faceAirflowChanged(bool state);
    void feetAirflowChanged(bool state);

private:
    bool enableAC{};
    bool heatingRear{};
    bool circulation{};
    bool heatingFront{};
    bool faceAirflow{};
    bool feetAirflow{};
};

}  // namespace AirCondition
