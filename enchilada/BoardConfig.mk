include device/qcom/mainline/shared/soc/sdm845/PlatformConfig.mk

# Copied from https://github.com/LineageOS/android_device_oneplus_sdm845-common/blob/lineage-16.0/BoardConfigCommon.mk
# Board Information
TARGET_BOOTLOADER_BOARD_NAME := enchilada
TARGET_BOARD_PLATFORM := enchilada
TARGET_SCREEN_DENSITY := 400

# Kernel/boot.img Configuration
BOARD_KERNEL_CMDLINE     += androidboot.hardware=enchilada

# Kernel
TARGET_KERNEL_DTB := sdm845-xiaomi-beryllium.dtb sdm845-xiaomi-beryllium-ebbg.dtb sdm845-xiaomi-beryllium-tianma.dtb

# Image Configuration
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2998927360
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57453555712
