# Squisher Choosing
DHO_VENDOR := vanir

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for codina
$(call inherit-product, device/samsung/codina/full_codina.mk)

# Low Volume In call fix - pure hack
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/u8500/CallService.apk:system/app/CallService.apk

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common.mk)

# Setup device specific product configuration
PRODUCT_DEVICE := codina
PRODUCT_NAME := vanir_codina
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8160
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I8160 TARGET_DEVICE=codina

