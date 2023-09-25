#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/qcom/mainline/idol3/aosp_idol3.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

PRODUCT_NAME := ev_idol3

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=idol3 \
    TARGET_PRODUCT=idol3 \
    PRIVATE_BUILD_DESC="idol3-user 6.0.1 MMB29M v7VAB-0 release-keys"

BUILD_FINGERPRINT := TCL/6045I/idol3:6.0.1/MMB29M/v7VAB-0:user/release-keys
