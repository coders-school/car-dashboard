#pragma once
#include <memory>

class QQmlApplicationEngine;

namespace AirConditionSitControl {
class Controller;

class Factory {
public:
    explicit Factory(QQmlApplicationEngine &engine);
    ~Factory();

private:
    void createObjects();

    std::unique_ptr<Controller> controller;
};

}  // namespace AirConditionSitControl