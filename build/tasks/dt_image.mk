#----------------------------------------------------------------------
# Generate device tree image (dt.img)
#----------------------------------------------------------------------
ifneq ($(strip $(TARGET_KERNEL_DIR)),)
ifeq ($(strip $(BOARD_KERNEL_SEPARATED_DT)),true)

INSTALLED_DTIMAGE_TARGET := $(PRODUCT_OUT)/dt.img
DTBTOOL := $(HOST_OUT_EXECUTABLES)/dtbTool$(HOST_EXECUTABLE_SUFFIX)

$(INSTALLED_DTIMAGE_TARGET): $(DTBTOOL) $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Target dt image: $@")
	$(DTBTOOL) $(BOARD_DTBTOOL_ARGS) -o $@ -s $(BOARD_KERNEL_PAGESIZE) -p $(HOST_OUT_EXECUTABLES) "$(TARGET_KERNEL_DIR)";
	$(hide) chmod a+r $@

ALL_DEFAULT_INSTALLED_MODULES += $(INSTALLED_DTIMAGE_TARGET)
ALL_MODULES.$(LOCAL_MODULE).INSTALLED += $(INSTALLED_DTIMAGE_TARGET)

endif # BOARD_KERNEL_SEPARATED_DT
endif # TARGET_KERNEL_DIR
