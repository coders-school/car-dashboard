#pragma once

#include <QObject>

namespace AirCondition {

class Controller : public QObject {
    Q_OBJECT
    // BUTTONS
    Q_PROPERTY(bool enableAC MEMBER enableAC NOTIFY enableACChanged FINAL)
    Q_PROPERTY(bool heatingRear MEMBER heatingRear NOTIFY heatingRearChanged FINAL)
    Q_PROPERTY(bool circulation MEMBER circulation NOTIFY circulationChanged FINAL)
    Q_PROPERTY(bool heatingFront MEMBER heatingFront NOTIFY heatingFrontChanged FINAL)
    Q_PROPERTY(bool faceAirflow MEMBER faceAirflow NOTIFY faceAirflowChanged FINAL)
    Q_PROPERTY(bool feetAirflow MEMBER feetAirflow NOTIFY feetAirflowChanged FINAL)
    // DIALS
    Q_PROPERTY(float aSetTemp READ getASetTemp WRITE setASetTemp NOTIFY aSetTempChanged FINAL)
    Q_PROPERTY(int aSetFan READ getASetFan WRITE setASetFan NOTIFY aSetFanChanged FINAL)

public:
    explicit Controller(QObject *parent = nullptr);

    float getASetTemp();
    void setASetTemp(float temp);
    int getASetFan();
    void setASetFan(int fan);

signals:
    // BUTTONS
    void enableACChanged(bool state);
    void heatingRearChanged(bool state);
    void circulationChanged(bool state);
    void heatingFrontChanged(bool state);
    void faceAirflowChanged(bool state);
    void feetAirflowChanged(bool state);
    // DIALS
    void aSetTempChanged(float temp);
    void aSetFanChanged(int fan);

private:
    // BUTTONS
    bool enableAC{};
    bool heatingRear{};
    bool circulation{};
    bool heatingFront{};
    bool faceAirflow{};
    bool feetAirflow{};
    // DIALS
    float aSetTemp = 25;
    int aSetFan = 0;
};

}  // namespace AirCondition
