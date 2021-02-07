#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Thermal configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    X01BDWifiOverlay

# ZenParts
PRODUCT_PACKAGES += \
    ZenParts 

# Inherit the proprietary files
$(call inherit-product, vendor/asus/X01BD/X01BD-vendor.mk)
