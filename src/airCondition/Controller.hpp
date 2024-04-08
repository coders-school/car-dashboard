#pragma once

#include <QObject>

namespace AirCondition {

class Controller : public QObject {
    Q_OBJECT

public:
    explicit Controller(QObject *parent = nullptr);
};

}  // namespace AirCondition
