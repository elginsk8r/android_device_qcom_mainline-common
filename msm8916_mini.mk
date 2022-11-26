$(call inherit-product, device/linaro/dragonboard/mini.mk)
$(call inherit-product, device/linaro/dragonboard/msm8916/device.mk)

# Product overrides
PRODUCT_NAME := msm8916_mini
PRODUCT_DEVICE := msm8916
PRODUCT_BRAND := Android
