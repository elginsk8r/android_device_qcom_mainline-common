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

# Primary Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Kernel/boot.img Configuration
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x02700000
BOARD_RAMDISK_OFFSET     := 0x02900000
BOARD_KERNEL_CMDLINE     := console=ttyMSM0,115200n8 earlycon earlyprintk console=tty0 androidboot.console=ttyMSM0 no_console_suspend
BOARD_KERNEL_CMDLINE     += androidboot.boot_devices=soc@0/f9824900.mmc
BOARD_KERNEL_CMDLINE     += firmware_class.path=/vendor/firmware/ init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE     += deferred_probe_timeout=60 androidboot.selinux=permissive

# Kernel
BOARD_KERNEL_LEGACY_DTB_APPEND ?= true
BOARD_KERNEL_IMAGE_NAME ?= zImage-dtb
TARGET_KERNEL_SOURCE := kernel/common
TARGET_KERNEL_CONFIG := qcom-android_defconfig
TARGET_KERNEL_MODULE_LIST := $(strip $(shell cat device/qcom/mainline/shared/soc/msm8974/modules.load))

# Kernel modules
BOARD_GENERIC_RAMDISK_MODULES :=
BOARD_GENERIC_RAMDISK_KERNEL_MODULES_LOAD := $(filter-out $(BOARD_GENERIC_RAMDISK_MODULES),$(TARGET_KERNEL_MODULE_LIST))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(filter $(BOARD_GENERIC_RAMDISK_MODULES),$(TARGET_KERNEL_MODULE_LIST))

# Image Configuration
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 23068672 #22M
BOARD_VENDORIMAGE_PARTITION_SIZE   := 258187264
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

include device/qcom/mainline/shared/PlatformConfigCommon.mk
