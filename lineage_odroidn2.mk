#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device
$(call inherit-product, device/hardkernel/odroidn2/aosp_odroidn2.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

PRODUCT_NAME := lineage_odroidn2

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Build props
PRODUCT_ATV_CLIENTID_BASE := ATV00100020-US
PRODUCT_GMS_CLIENTID_BASE := android-google-tv
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sabrina_prod_stable-user 14 UTTC.250917.004 14193937 release-keys" \
    BuildFingerprint=google/sabrina_prod_stable/sabrina:14/UTTC.250917.004/14193937:user/release-keys \
    SystemName=$(PRODUCT_DEVICE)
