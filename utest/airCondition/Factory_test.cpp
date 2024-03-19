
#include "airCondition/Factory.hpp"

#include <gtest/gtest.h>

TEST(AirContition_Factory, ExampleCase) {
    auto airConditionFactory = std::make_unique<AirCondition::Factory>();

    EXPECT_TRUE(airConditionFactory->getController());
}
