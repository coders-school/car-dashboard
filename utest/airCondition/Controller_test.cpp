#include "airCondition/Controller.hpp"

#include <QVariant>

#include "SignalTester.hpp"
#include "gtest/gtest.h"

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

class AirConditionController_Test : public ::testing::Test {
public:
    AirCondition::Controller controller;
    SignalTester signalTester;
};

TEST_F(AirConditionController_Test, enableAC) {
    QVariant property = controller.property("enableAC");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::enableACChanged, &signalTester, &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("enableAC", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("enableAC", false));
}

TEST_F(AirConditionController_Test, heatingRear) {
    QVariant property = controller.property("heatingRear");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::heatingRearChanged, &signalTester,
                     &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("heatingRear", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("heatingRear", false));
}

TEST_F(AirConditionController_Test, circulation) {
    QVariant property = controller.property("circulation");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::circulationChanged, &signalTester,
                     &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("circulation", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("circulation", false));
}

TEST_F(AirConditionController_Test, heatingFront) {
    QVariant property = controller.property("heatingFront");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::heatingFrontChanged, &signalTester,
                     &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("heatingFront", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("heatingFront", false));
}

TEST_F(AirConditionController_Test, faceAirflow) {
    QVariant property = controller.property("faceAirflow");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::faceAirflowChanged, &signalTester,
                     &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("faceAirflow", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("faceAirflow", false));
}

TEST_F(AirConditionController_Test, feetAirflow) {
    QVariant property = controller.property("feetAirflow");
    ASSERT_TRUE(property.canConvert<bool>());
    EXPECT_FALSE(property.toBool());

    QObject::connect(&controller, &AirCondition::Controller::feetAirflowChanged, &signalTester,
                     &SignalTester::slot_bool);

    EXPECT_CALL(signalTester, slot_bool(true)).Times(1);
    EXPECT_TRUE(controller.setProperty("feetAirflow", true));

    EXPECT_CALL(signalTester, slot_bool(false)).Times(1);
    EXPECT_TRUE(controller.setProperty("feetAirflow", false));
}
