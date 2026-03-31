#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/hardkernel/odroidn2

TARGET_AMLOGIC_SOC := s922x
include device/mainline/amlogic-common/optional/options.mk

# Inherit from mainline/amlogic-common
$(call inherit-product, device/mainline/amlogic-common/amlogic.mk)

# A/B
AB_OTA_UPDATER := false

# Init
PRODUCT_PACKAGES += \
    fstab.odroidn2 \
    fstab.odroidn2.ramdisk \
    init.odroidn2.rc \
    init.recovery.odroidn2.rc

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    bootable/deprecated-ota
