#pragma once
#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include <QObject>

class SignalTester : public QObject {
    Q_OBJECT
public:
    MOCK_METHOD(void, slot_bool, (bool val));
    MOCK_METHOD(void, slot_int, (int val));
    MOCK_METHOD(void, slot_float, (float val));
};
