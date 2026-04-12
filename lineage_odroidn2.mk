#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit from device
$(call inherit-product, device/hardkernel/odroidn2/device.mk)

PRODUCT_NAME := lineage_odroidn2
PRODUCT_DEVICE := odroidn2
PRODUCT_BRAND := ODROID
PRODUCT_MANUFACTURER := HardKernel Co., Ltd.
PRODUCT_MODEL := ODROID-N2

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920
