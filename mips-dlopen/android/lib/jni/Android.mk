LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_MODULE    := test_android
LOCAL_SRC_FILES := ../../../libtest.cpp

include $(BUILD_SHARED_LIBRARY)

