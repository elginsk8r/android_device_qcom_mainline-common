#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from axolotl device
$(call inherit-product, device/qcom/mainline/axolotl/aosp_axolotl.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH  := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-ev

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

PRODUCT_NAME := ev_axolotl

# ShiftOS - 3.8 G (20220824)
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=axolotl \
    PRODUCT_NAME=axolotl \
    PRIVATE_BUILD_DESC="axolotl-user 10 QSV1.210329.038 20220824 release-keys"

BUILD_FINGERPRINT := SHIFT/axolotl/axolotl:10/QSV1.210329.038/20220824:user/release-keys
