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
