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

TARGET_KERNEL_USE ?= mainline
TARGET_PREBUILT_KERNEL_PATH ?= device/qcom/mainline-kernel/android-$(TARGET_KERNEL_USE)
TARGET_PREBUILT_KERNEL_MODULES ?= $(wildcard $(TARGET_PREBUILT_KERNEL_PATH)/*.ko)

ifneq ($(PREBUILT_KERNEL_MODULES),)
    # Following modules go to vendor partition,
    # the remaining go to ramdisk
    ifneq ($(TARGET_VENDOR_MODULES),)
      PREBUILT_VENDOR_MODULES := $(TARGET_VENDOR_MODULES)
    endif
    BOARD_GENERIC_RAMDISK_KERNEL_MODULES := $(filter-out $(PREBUILT_VENDOR_MODULES),$(TARGET_PREBUILT_KERNEL_MODULES))
    BOARD_VENDOR_KERNEL_MODULES := $(filter $(PREBUILT_VENDOR_MODULES),$(TARGET_PREBUILT_KERNEL_MODULES))
endif
