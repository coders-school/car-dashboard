#pragma once
#include <memory>

class QQmlApplicationEngine;

namespace AirCondition {
class Controller;

class Factory {
public:
    explicit Factory();
    ~Factory();

    std::shared_ptr<Controller> getController();

private:
    void createObjects();

    std::shared_ptr<Controller> controller;
};

}  // namespace AirCondition