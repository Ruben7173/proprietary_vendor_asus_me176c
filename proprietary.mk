LOCAL_PATH := vendor/asus/me176c/proprietary

# Original ASUS system
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/upi_ug31xx:root/sbin/upi_ug31xx:asus \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/firmware,system/vendor/firmware)

# Widevine DRM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so:widevine

# ARM Native bridge (Houdini)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/houdini,system)
