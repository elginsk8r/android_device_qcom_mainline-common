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
    device/qcom/mainline/products/axolotl/axolotl.mk \
    device/qcom/mainline/products/beryllium/beryllium.mk \
    device/qcom/mainline/products/enchilada/enchilada.mk \
    device/qcom/mainline/products/idol3/idol3.mk \
    device/qcom/mainline/products/idol347/idol347.mk \
    device/qcom/mainline/products/kiwi/kiwi.mk

COMMON_LUNCH_CHOICES := \
    axolotl-userdebug \
    beryllium-userdebug \
    enchilada-userdebug \
    idol3-userdebug \
    idol347-userdebug \
    kiwi-userdebug
