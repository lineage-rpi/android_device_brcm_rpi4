#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include device/brcm/rpi-common/BoardConfigCommon.mk

DEVICE_PATH := device/brcm/rpi4

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a72

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_CONFIG := lineageos_rpi4_defconfig
TARGET_KERNEL_SOURCE := kernel/brcm/rpi

# Graphics
BOARD_GPU_DRIVERS := v3d kmsro
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_SCREEN_DENSITY := 240
TARGET_USE_V3D_KMSRO := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
