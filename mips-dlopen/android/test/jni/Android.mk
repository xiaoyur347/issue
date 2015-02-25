LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := android_test
LOCAL_SRC_FILES := ../../../main.cpp

LOCAL_LDLIBS    += -ldl

include $(BUILD_EXECUTABLE)