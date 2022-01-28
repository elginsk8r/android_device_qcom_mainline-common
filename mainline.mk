#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Adb
PRODUCT_PRODUCT_PROPERTIES := \
    persist.adb.nonblocking_ffs=0 \
    ro.adb.nonblocking_ffs=0

# ART
PRODUCT_RUNTIMES := runtime_libart_default

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@4.0-impl:32 \
    android.hardware.audio.effect@4.0-impl:32 \
    android.hardware.audio@2.0-service \
    android.hardware.soundtrigger@2.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.primary.$(TARGET_BOARD_PLATFORM) \
    audio.usb.default \
    audio.r_submix.default \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_bluetooth_legacy_hal.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_bluetooth_legacy_hal.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service.btlinux \
    android.hardware.bluetooth.audio@2.0-impl

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-impl \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    gralloc.gbm \
    hwcomposer.drm \
    libGLES_mesa

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gralloc=gbm \
    ro.hardware.hwcomposer=drm \
    debug.sf.no_hw_vsync=1 \
    ro.sf.lcd_density=160 \
    ro.opengles.version=196608 \
    persist.demo.rotationlock=1

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Firmware files
$(call inherit-product-if-exists, vendor/qcom/mainline/mainline-vendor.mk)

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-cuttlefish \
    android.hardware.health@2.1-service

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayouts/common.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/$(TARGET_BOARD_PLATFORM).kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    frameworks/av/media/libeffects/data/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml

# Memtrack
PRODUCT_PACKAGES += \
    memtrack.default \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0-impl

# Permissions
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/permissions/android.software.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.software.backup.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.backup.xml \
    frameworks/native/data/etc/android.software.cts.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.cts.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.voice_recognizers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.voice_recognizers.xml

# QCOM
PRODUCT_PACKAGES += \
    pd-mapper \
    qrtr-ns \
    qrtr-cfg \
    qrtr-lookup \
    rmtfs \
    tqftpserv

# Ramdisk
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/rootdir/etc/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.$(TARGET_BOARD_PLATFORM).rc \
    $(LOCAL_PATH)/rootdir/etc/init.common.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.$(TARGET_BOARD_PLATFORM).usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.common.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc

# Scoped Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediaswcodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp_policy/mediaswcodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaswcodec.policy

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    external/mesa3d

# Suspend
PRODUCT_PACKAGES += \
    suspend_blocker

# VNDK
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
PRODUCT_PACKAGES += \
    vndk-sp

# WiFi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    wificond

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf
