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
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_VARIANT := kryo385
TARGET_CPU_ABI := arm64-v8a

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_VARIANT := kryo385
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Kernel/boot.img Configuration
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_CMDLINE     := console=ttyMSM0,115200n8 earlycon earlyprintk console=tty0 androidboot.console=ttyMSM0 no_console_suspend
BOARD_KERNEL_CMDLINE     += androidboot.boot_devices=soc@0/1d84000.ufshc
BOARD_KERNEL_CMDLINE     += firmware_class.path=/vendor/firmware/ init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE     += deferred_probe_timeout=30 androidboot.selinux=permissive

# Image Configuration
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864 #64M
BOARD_VENDORIMAGE_PARTITION_SIZE   := 536870912
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

include device/qcom/mainline/shared/PlatformConfigCommon.mk
