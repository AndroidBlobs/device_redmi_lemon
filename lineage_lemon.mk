# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lemon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := lemon
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := lineage_lemon
PRODUCT_MODEL := Lime for arm64

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := lemon
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 10 Android-Q-build-20210308163118 V12.0.7.0.QJQEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/lime/lime:10/QKQ1.200830.002/V12.0.7.0.QJQEUXM:user/release-keys
