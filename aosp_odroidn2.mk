#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit from device
$(call inherit-product, device/hardkernel/odroidn2/device.mk)

PRODUCT_NAME := aosp_odroidn2
PRODUCT_DEVICE := odroidn2
PRODUCT_BRAND := ODROID
PRODUCT_MANUFACTURER := HardKernel Co., Ltd.
PRODUCT_MODEL := ODROID-N2

# Build type
PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_CHARACTERISTICS := tv
