include device/qcom/mainline/shared/soc/msm8974/PlatformConfig.mk

# Board Information
TARGET_BOOTLOADER_BOARD_NAME := hammerhead
TARGET_BOARD_PLATFORM := hammerhead
TARGET_SCREEN_DENSITY := 480

# Kernel/boot.img Configuration
BOARD_KERNEL_CMDLINE     += androidboot.hardware=hammerhead

# Kernel
TARGET_KERNEL_DTB := qcom-msm8974-lge-nexus5-hammerhead.dtb

# Image Configuration
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1511817216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13208145920
