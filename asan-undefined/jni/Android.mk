LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := test_android
LOCAL_SRC_FILES := ../libtest.cpp

LOCAL_CFLAGS = -fsanitize=address
LOCAL_CXXFLAGS = -fsanitize=address
LOCAL_LDFLAGS = -fsanitize=address -v

include $(BUILD_SHARED_LIBRARY)

