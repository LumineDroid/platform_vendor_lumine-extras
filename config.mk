#
# Copyright (C) 2025 LumineDroid
#
# SPDX-License-Identifier: Apache-2.0
#

# Bootanimation
ifeq ($(TARGET_SCREEN_WIDTH),1080)
     PRODUCT_COPY_FILES += vendor/lumine-extras/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_SCREEN_WIDTH),1440)
     PRODUCT_COPY_FILES += vendor/lumine-extras/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_SCREEN_WIDTH),720)
     PRODUCT_COPY_FILES += vendor/lumine-extras/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
    ifeq ($(TARGET_SCREEN_WIDTH),)
        $(warning "TARGET_SCREEN_WIDTH is undefined, assuming 1080p")
    else
        $(warning "Current bootanimation res is not supported, forcing 1080p")
    endif
    PRODUCT_COPY_FILES += vendor/lumine-extras/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif

# Call Recording
TARGET_CALL_RECORDING_SUPPORTED ?= true
ifneq ($(TARGET_CALL_RECORDING_SUPPORTED),false)
PRODUCT_COPY_FILES += \
    vendor/lumine-extras/config/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images \
    product_charger_res_images_vendor

# Customizations
PRODUCT_PACKAGES += \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay

# Fonts
PRODUCT_COPY_FILES += \
    vendor/lumine-extras/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/lumine-extras/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    vendor/lumine-extras/fonts/GoogleSansClock-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSansClock-Regular.ttf \
    vendor/lumine-extras/fonts/GoogleSansFlex-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSansFlex-Regular.ttf \
    vendor/lumine-extras/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# GApps
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Google Photos Pixel Exclusive XML
PRODUCT_COPY_FILES += \
    vendor/lumine-extras/prebuilt/common/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml

# Overlay
PRODUCT_PACKAGES += \
    AndroidBlackThemeOverlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lumine-extras/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lumine-extras/overlay/common
