ifneq ($(filter axolotl beryllium enchilada, $(TARGET_DEVICE)),)

IMAGE_GZ := device/qcom/mainline/shared/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/Image.gz
DTB := $(wildcard device/qcom/mainline/shared/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/*.dtb)

$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB)
	cat $(IMAGE_GZ) $(DTB) > $@

droidcore: $(PRODUCT_OUT)/kernel

endif
