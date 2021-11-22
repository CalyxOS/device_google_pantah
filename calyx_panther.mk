# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/calyx_common.mk)
$(call inherit-product, device/google/pantah/device-calyx.mk)
$(call inherit-product, device/google/pantah/aosp_oriole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220624.021 8877034 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TP1A.220624.021/8877034:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false
