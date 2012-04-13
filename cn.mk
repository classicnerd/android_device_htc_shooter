# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/shooter/full_shooter.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cn/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := classic_shooter
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT=sprint/htc_shooter/shooter:2.3.4/GRJ22/245066.5:user/release-keys PRIVATE_BUILD_DESC="2.17.651.5 CL245066 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Butta
PRODUCT_VERSION_DEVICE_SPECIFIC := 2

PRODUCT_MOTD :="Thank you for choosing Classicnerd Shooter\nGet the latest rom at www.classicnerd.net\nEnjoy the possibilities"

PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cn/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cn/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cn/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
