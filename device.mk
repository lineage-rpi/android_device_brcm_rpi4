#
# Copyright (C) 2021 KonstaKANG
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, build/target/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += \
    device/brcm/rpi4/rebootrpi.sh:recovery/root/system/bin/rebootrpi.sh \
    device/brcm/rpi4/twrp.flags:recovery/root/system/etc/twrp.flags \
    device/brcm/rpi4/twrp.usb.flags:recovery/root/system/etc/twrp.usb.flags

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.system_root_image=true
