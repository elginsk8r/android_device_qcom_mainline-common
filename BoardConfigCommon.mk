#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

USES_DEVICE_QCOM_MAINLINE_COMMON := true
QCOM_MAINLINE_COMMON_PATH := device/qcom/mainline-common

# Bootconfig
BOARD_BOOTCONFIG += \
    androidboot.hardware=qcom

# Bootloader
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 440

# Filesystem
BOARD_EXT4_SHARE_DUP_BLOCKS :=
TARGET_FS_CONFIG_GEN := $(QCOM_MAINLINE_COMMON_PATH)/configs/misc/config.fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
include device/generic/shared/board_config/cmdline/common.mk
BOARD_KERNEL_CMDLINE += \
    console=ttyMSM0

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT ?= RGBX_8888

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(QCOM_MAINLINE_COMMON_PATH)/sepolicy/vendor
