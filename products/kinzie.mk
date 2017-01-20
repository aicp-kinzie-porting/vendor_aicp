# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/kinzie/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/kinzie/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_kinzie
PRODUCT_BRAND := Android
PRODUCT_DEVICE := kinzie
PRODUCT_MODEL := XT1580
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_PROPERTY_OVERRIDES +=\
    ro.product.device=kinzie

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto X Force"

# AICP Device Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
   DEVICE_MAINTAINERS="Arasthel"

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/aicp/configs/bootanimation.mk
