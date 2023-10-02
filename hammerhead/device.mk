#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/qcom/mainline/shared/soc/msm8916/platform.mk)

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_RAMDISK)/fstab.hammerhead \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.hammerhead \
    $(LOCAL_PATH)/etc/audio.hammerhead.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio.hammerhead.xml \
    device/qcom/mainline/shared/soc/msm8974/init.msm8974.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.hammerhead.rc \
    device/qcom/mainline/shared/key_layout.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/hammerhead.kl

# Build generic Audio HAL
PRODUCT_PACKAGES := audio.primary.hammerhead

# Build generic lights HAL
PRODUCT_PACKAGES += lights.hammerhead

# Create mountpoints and symlinks for firmware files
PRODUCT_PACKAGES += hammerhead_firmware
