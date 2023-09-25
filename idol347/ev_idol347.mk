#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/qcom/mainline/idol347/aosp_idol347.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

PRODUCT_NAME := ev_idol347

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=idol347 \
    TARGET_PRODUCT=idol347 \
    PRIVATE_BUILD_DESC="idol347-user 6.0.1 MMB29M v1BAB-0 release-keys"

BUILD_FINGERPRINT := TCL/6039S/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys
