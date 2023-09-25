#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lemonade device
$(call inherit-product, device/qcom/mainline/kiwi/aosp_kiwi.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

PRODUCT_NAME := ev_kiwi

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=idol3 \
    TARGET_PRODUCT=idol3 \
    PRIVATE_BUILD_DESC="KIW-L24-user 5.1.1 GRJ90 C567B140 release-keys"

BUILD_FINGERPRINT := HONOR/KIW-L24/HNKIW-Q:5.1.1/HONORKIW-L24/C567B140:user/release-keys
