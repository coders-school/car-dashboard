#pragma once

#include <QObject>

namespace AirConditionSitControl {

class Controller : public QObject {
    Q_OBJECT
    Q_PROPERTY(int counter READ getCounter WRITE setCounter NOTIFY counterChanged FINAL)

public:
    explicit Controller(QObject *parent = nullptr);

    int getCounter() const;
    void setCounter(int value);

public slots:
    void clickButton();

signals:
    void counterChanged();

private:
    void incrementCounter();

    int counter = 0;
};

}  // namespace AirConditionSitControl
