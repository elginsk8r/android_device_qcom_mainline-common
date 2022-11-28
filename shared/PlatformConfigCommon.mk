# Copyright (C) 2013 The Android Open Source Project
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

TARGET_USES_64_BIT_BINDER := true

# Configuration
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true

# Image Configuration
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Enable Treble
PRODUCT_FULL_TREBLE := true
BOARD_VNDK_VERSION := current

# Mesa DRM hwcomposer
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := freedreno virgl
TARGET_USES_HWC2 := true

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

# BT
BOARD_HAVE_BLUETOOTH := true

# TinyHAL
BOARD_USES_TINYHAL_AUDIO := true

BOARD_SEPOLICY_DIRS += \
    device/qcom/mainline/shared/sepolicy \
    system/bt/vendor_libs/linux/sepolicy

DEVICE_MANIFEST_FILE := device/qcom/mainline/shared/manifest.xml
DEVICE_MATRIX_FILE := device/qcom/mainline/shared/compatibility_matrix.xml

# Enable dex pre-opt to speed up initial boot
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_PIC := true
  endif
endif

# inherit from the proprietary version
-include vendor/qcom/mainline/BoardConfigVendor.mk
