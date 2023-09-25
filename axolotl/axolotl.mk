# Inherit the full_base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_BRAND  := AOSP
PRODUCT_DEVICE := axolotl
PRODUCT_NAME   := axolotl

# The following are too big (31M) for ramdisk
TARGET_VENDOR_MODULES :=
$(call inherit-product, device/qcom/mainline/axolotl/device.mk)
