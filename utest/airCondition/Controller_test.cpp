#include <gtest/gtest.h>
#include "airCondition/Controller.hpp"


TEST(AirConditionController_PreTest, constructor) {
    {
        AirCondition::Controller controller;
        EXPECT_EQ(controller.parent(), nullptr);
    }
    {
        QObject obj;
        AirCondition::Controller controller(&obj);
        EXPECT_EQ(controller.parent(), &obj);
    }
}
