# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from tucana device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := tucana
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_tucana
PRODUCT_MODEL := Mi Note 10

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := tucana
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="tucana-user 11 RKQ1.200826.002 V13.0.1.0.RFDMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/tucana/tucana:11/RKQ1.200826.002/V13.0.1.0.RFDMIXM:user/release-keys
