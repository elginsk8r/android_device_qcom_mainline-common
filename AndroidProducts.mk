#
# This file should set PRODUCT_MAKEFILES to a list of product makefiles
# to expose to the build system.  LOCAL_DIR will already be set to
# the directory containing this file.
#
# This file may not rely on the value of any variable other than
# LOCAL_DIR; do not use any conditionals, and do not look up the
# value of any variable that isn't set in this file or in a file that
# it includes.
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/axolotl/aosp_axolotl.mk \
    $(LOCAL_DIR)/beryllium/aosp_beryllium.mk \
    $(LOCAL_DIR)/enchilada/aosp_enchilada.mk \
    $(LOCAL_DIR)/idol3/aosp_idol3.mk \
    $(LOCAL_DIR)/idol347/aosp_idol347.mk \
    $(LOCAL_DIR)/kiwi/aosp_kiwi.mk

COMMON_LUNCH_CHOICES := \
    aosp_axolotl-userdebug \
    aosp_beryllium-userdebug \
    aosp_enchilada-userdebug \
    aosp_idol3-userdebug \
    aosp_idol347-userdebug \
    aosp_kiwi-userdebug

ifneq ($(wildcard $(SRC_EVERVOLV_DIR)/config/common.mk),)

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/axolotl/ev_axolotl.mk \
    $(LOCAL_DIR)/beryllium/ev_beryllium.mk \
    $(LOCAL_DIR)/enchilada/ev_enchilada.mk \
    $(LOCAL_DIR)/idol3/ev_idol3.mk \
    $(LOCAL_DIR)/idol347/ev_idol347.mk \
    $(LOCAL_DIR)/kiwi/ev_kiwi.mk

COMMON_LUNCH_CHOICES := \
    ev_axolotl-userdebug \
    ev_beryllium-userdebug \
    ev_enchilada-userdebug \
    ev_idol3-userdebug \
    ev_idol347-userdebug \
    ev_kiwi-userdebug

endif
