# Inherit some common stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/calyx_common.mk)
$(call inherit-product, device/google/pantah/cheetah/device-calyx.mk)
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 AP2A.240805.005 12025142 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/AP2A.240805.005/12025142:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
