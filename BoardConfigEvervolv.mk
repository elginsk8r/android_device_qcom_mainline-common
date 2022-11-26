#
# Product-specific compile-time definitions.
#
TARGET_KERNEL_CONFIG := msm8916_defconfig
TARGET_KERNEL_SOURCE := kernel/common

# Reserved Space
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 368640000
endif
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 15360000
