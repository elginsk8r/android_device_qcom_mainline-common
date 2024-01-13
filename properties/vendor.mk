# USB
# HACK: Avoid usb crash
PRODUCT_VENDOR_PROPERTIES += \
    persist.adb.nonblocking_ffs=0 \
    ro.adb.nonblocking_ffs=0
