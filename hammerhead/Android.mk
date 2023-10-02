LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hammerhead_firmware
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)

# Create mount points for device-specific firmware partitions
LOCAL_POST_INSTALL_CMD := mkdir -p $(addprefix $(TARGET_OUT_VENDOR)/, \
			  odm/modem odm/persist);

# Create directory for wlan NV BIN file
LOCAL_POST_INSTALL_CMD += mkdir -p $(addprefix $(TARGET_OUT_VENDOR)/, \
			  firmware/wlan/prima);

# Symlink device-specific firmware files in $(TARGET_OUT_VENDOR)/firmware/
LOCAL_POST_INSTALL_CMD += \
    ln -sf /vendor/odm/modem/image/mba.b00 $(TARGET_OUT_VENDOR)/firmware/mba.b00; \
    ln -sf /vendor/odm/modem/image/mba.mdt $(TARGET_OUT_VENDOR)/firmware/mba.mdt; \
    ln -sf /vendor/odm/modem/image/modem.b00 $(TARGET_OUT_VENDOR)/firmware/modem.b00; \
    ln -sf /vendor/odm/modem/image/modem.b01 $(TARGET_OUT_VENDOR)/firmware/modem.b01; \
    ln -sf /vendor/odm/modem/image/modem.b02 $(TARGET_OUT_VENDOR)/firmware/modem.b02; \
    ln -sf /vendor/odm/modem/image/modem.b03 $(TARGET_OUT_VENDOR)/firmware/modem.b03; \
    ln -sf /vendor/odm/modem/image/modem.b06 $(TARGET_OUT_VENDOR)/firmware/modem.b06; \
    ln -sf /vendor/odm/modem/image/modem.b08 $(TARGET_OUT_VENDOR)/firmware/modem.b08; \
    ln -sf /vendor/odm/modem/image/modem.b09 $(TARGET_OUT_VENDOR)/firmware/modem.b09; \
    ln -sf /vendor/odm/modem/image/modem.b11 $(TARGET_OUT_VENDOR)/firmware/modem.b11; \
    ln -sf /vendor/odm/modem/image/modem.b12 $(TARGET_OUT_VENDOR)/firmware/modem.b12; \
    ln -sf /vendor/odm/modem/image/modem.b13 $(TARGET_OUT_VENDOR)/firmware/modem.b13; \
    ln -sf /vendor/odm/modem/image/modem.b14 $(TARGET_OUT_VENDOR)/firmware/modem.b14; \
    ln -sf /vendor/odm/modem/image/modem.b15 $(TARGET_OUT_VENDOR)/firmware/modem.b15; \
    ln -sf /vendor/odm/modem/image/modem.b16 $(TARGET_OUT_VENDOR)/firmware/modem.b16; \
    ln -sf /vendor/odm/modem/image/modem.b17 $(TARGET_OUT_VENDOR)/firmware/modem.b17; \
    ln -sf /vendor/odm/modem/image/modem.b18 $(TARGET_OUT_VENDOR)/firmware/modem.b18; \
    ln -sf /vendor/odm/modem/image/modem.b19 $(TARGET_OUT_VENDOR)/firmware/modem.b19; \
    ln -sf /vendor/odm/modem/image/modem.b22 $(TARGET_OUT_VENDOR)/firmware/modem.b22; \
    ln -sf /vendor/odm/modem/image/modem.b23 $(TARGET_OUT_VENDOR)/firmware/modem.b23; \
    ln -sf /vendor/odm/modem/image/modem.b24 $(TARGET_OUT_VENDOR)/firmware/modem.b24; \
    ln -sf /vendor/odm/modem/image/modem.mdt $(TARGET_OUT_VENDOR)/firmware/modem.mdt;

include $(BUILD_PHONY_PACKAGE)
