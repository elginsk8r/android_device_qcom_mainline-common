#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio
$(call inherit-product, device/generic/shared/hardware/templates/audio/audio-example-aidl.mk)

# Console
$(call inherit-product, device/generic/shared/features/first_stage_console/first_stage_console.mk)
$(call inherit-product, device/generic/shared/features/serial_console_as_root/serial_console_as_root.mk)

# Gatekeeper
$(call inherit-product, device/generic/shared/hardware/gatekeeper/software/gatekeeper_software.mk)

# Graphics - Composer
TARGET_HWC2_HIDL_VERSION := 2.3
$(call inherit-product, device/generic/shared/hardware/graphics/composer/drm_hwcomposer/drm_hwcomposer.mk)

# Graphics - Gralloc
TARGET_GRALLOC4_MINIGBM_VARIANT := _msm
$(call inherit-product, device/generic/shared/hardware/graphics/gralloc/minigbm_gralloc4/minigbm_gralloc4.mk)

# Graphics - EGL & Vulkan
ifeq ($(TARGET_GRAPHICS_USES_SWIFTSHADER),true)
$(call inherit-product, device/generic/shared/hardware/graphics/egl_vulkan/swiftshader.mk)
else
$(call inherit-product, device/generic/shared/hardware/graphics/egl_vulkan/mesa/freedreno/freedreno.mk)
endif

# Health
ifeq ($(TARGET_HEALTH_USES_CUTTLEFISH_HAL),true)
$(call inherit-product, device/generic/shared/hardware/health/cuttlefish/health_cuttlefish.mk)
else
$(call inherit-product, device/generic/shared/hardware/templates/health/health-example-aidl.mk)
endif

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc \
    $(LOCAL_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc \
    device/linaro/dragonboard/init.common.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.common.usb.rc

# Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service

# Permissions (Misc)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Properties
include $(wildcard $(LOCAL_PATH)/properties/*.mk)

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.qcom.rc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 33

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# SPL
include device/generic/shared/misc/vendor_spl_match_platform.mk

# Userspace reboot
$(call inherit-product, $(SRC_TARGET_DIR)/product/userspace_reboot.mk)

# VINTF
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
