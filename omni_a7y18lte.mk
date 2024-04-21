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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a7y18lte device
$(call inherit-product, device/samsung/a7y18lte/device.mk)

PRODUCT_DEVICE := a7y18lte
PRODUCT_NAME := omni_a7y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A750FN
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a7y18ltexx-user 10 QP1A.190711.020 A750FNXXU5CTK1 release-keys"

BUILD_FINGERPRINT := samsung/a7y18ltexx/a7y18lte:10/QP1A.190711.020/A750FNXXU5CTK1:user/release-keys
