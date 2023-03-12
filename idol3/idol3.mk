# Inherit the full_base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := idol3
PRODUCT_DEVICE := idol3
PRODUCT_BRAND := AOSP

# The following are too big (31M) for ramdisk
TARGET_VENDOR_MODULES :=
$(call inherit-product, device/qcom/mainline/idol3/device.mk)
