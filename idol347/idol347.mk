# Inherit the full_base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := idol347
PRODUCT_DEVICE := idol347
PRODUCT_BRAND := AOSP

# The following are too big (31M) for ramdisk
TARGET_VENDOR_MODULES := %/msm.ko
$(call inherit-product, device/qcom/mainline/idol347/device.mk)
