#
# Copyright (C) 2021 KonstaKANG
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),rpi4)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
