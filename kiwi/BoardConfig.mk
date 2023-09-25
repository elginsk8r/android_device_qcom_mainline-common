include device/qcom/mainline/shared/BoardConfig.mk

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := kiwi
TARGET_BOARD_PLATFORM := kiwi
TARGET_SCREEN_DENSITY := 400

# Kernel/boot.img Configuration
BOARD_KERNEL_CMDLINE     += androidboot.hardware=kiwi

# Kernel
TARGET_KERNEL_MODULE_LIST += $(strip $(shell cat device/qcom/mainline/kiwi/modules.load))
TARGET_KERNEL_DTB := qcom/msm8939-huawei-kiwi.dtb

# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11618204672
