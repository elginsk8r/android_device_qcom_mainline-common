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

COMMON_PATH := device/qcom/mainline

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# DEX pre-opt
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_PIC := true
  endif
endif

# Mesa DRM hwcomposer
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := freedreno virgl
TARGET_USES_HWC2 := true

# Recovery
TARGET_NO_RECOVERY := true

# Treble
PRODUCT_FULL_TREBLE := true
BOARD_VNDK_VERSION := current
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy \
    system/bt/vendor_libs/linux/sepolicy
