#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

BUILD_DEVICE := odroidn2
BUILD_TARGETS := aosp lineage
BUILD_TYPES := user userdebug eng

$(foreach flavor,$(BUILD_TARGETS), \
    $(if $(wildcard $(LOCAL_DIR)/$(flavor)_$(BUILD_DEVICE).mk), \
        $(eval PRODUCT_MAKEFILES += \
            $(LOCAL_DIR)/$(flavor)_$(BUILD_DEVICE).mk) \
        $(foreach build_type,$(BUILD_TYPES), \
            $(eval COMMON_LUNCH_CHOICES += \
                $(flavor)_$(BUILD_DEVICE)-$(build_type)) \
        ) \
    ) \
)
