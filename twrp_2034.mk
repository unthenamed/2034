#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 2034 device
$(call inherit-product, device/vivo/2034/device.mk)

PRODUCT_DEVICE := 2034
PRODUCT_NAME := twrp_2034
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2034
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="2054-user 11 RP1A.200720.012 compiler04091909 release-keys"

BUILD_FINGERPRINT := vivo/2054/2034:11/RP1A.200720.012/compiler04091909:user/release-keys
