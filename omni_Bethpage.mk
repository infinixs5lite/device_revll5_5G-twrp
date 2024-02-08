#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Bethpage device
$(call inherit-product, device/wingtech/Bethpage/device.mk)

PRODUCT_DEVICE := Bethpage
PRODUCT_NAME := omni_Bethpage
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := TMAF025G
PRODUCT_MANUFACTURER := wingtech

PRODUCT_GMS_CLIENTID_BASE := android-wingtech

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_S98122AA1-user 12 SP1A.210812.016 0mp1rck61v164P17 release-keys"

BUILD_FINGERPRINT := T-Mobile/Bethpage/Bethpage:12/SP1A.210812.016/SW_S98122AA1_V050:user/release-keys
