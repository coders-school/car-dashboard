#include "Factory.hpp"

#include "Controller.hpp"

class QQmlApplicationEngine;

namespace AirCondition {

Factory::Factory() { this->createObjects(); }

Factory::~Factory() = default;

std::shared_ptr<Controller> Factory::getController() { return this->controller; }

void Factory::createObjects() { this->controller = std::make_shared<Controller>(); }

}  // namespace AirCondition