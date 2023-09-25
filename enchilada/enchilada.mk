# Inherit the full_base
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_BRAND := AOSP

# The following are too big (31M) for ramdisk
TARGET_VENDOR_MODULES := %/qcom_q6v5_adsp.ko %/qcom_q6v5_mss.ko %/qcom_q6v5_pas.ko
$(call inherit-product, device/qcom/mainline/enchilada/device.mk)
