# Install firmware files

# Adreno
PRODUCT_PACKAGES :=	\
    a300_pfp.fw		\
    a300_pm4.fw		\
    a420_pfp.fw		\
    a420_pm4.fw

# Venus
# Video encoder/decoder accelerator
PRODUCT_PACKAGES +=	\
    venus.b00		\
    venus.b01		\
    venus.b02		\
    venus.b03		\
    venus.b04		\
    venus.mdt

# License
# Necessary to bundle license with firmware files
PRODUCT_PACKAGES +=	\
    LICENSE.qcom	\
    NOTICE.txt

PRODUCT_COPY_FILES := \
    device/qcom/mainline/firmware/a300_pfp.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a300_pfp.fw \
    device/qcom/mainline/firmware/a300_pm4.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a300_pm4.fw \
    device/qcom/mainline/firmware/a420_pfp.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a420_pfp.fw \
    device/qcom/mainline/firmware/a420_pm4.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a420_pm4.fw \
    device/qcom/mainline/firmware/venus.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.b00 \
    device/qcom/mainline/firmware/venus.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.b01 \
    device/qcom/mainline/firmware/venus.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.b02 \
    device/qcom/mainline/firmware/venus.b03:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.b03 \
    device/qcom/mainline/firmware/venus.b04:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.b04 \
    device/qcom/mainline/firmware/venus.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.mdt
