# Inherit some common stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/calyx_common.mk)
$(call inherit-product, device/google/pantah/panther/device-calyx.mk)
$(call inherit-product, device/google/pantah/aosp_panther.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/AP2A.240705.004/11875680:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
