#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from generic device
$(call inherit-product, device/android/twgeneric/device.mk)

PRODUCT_DEVICE := twgeneric
PRODUCT_NAME := omni_twgeneric
PRODUCT_BRAND := Android
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := android

PRODUCT_GMS_CLIENTID_BASE := android-android

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_cf_x86_64_phone-userdebug 13 TP1A.220624.019 15212407 test-keys"

BUILD_FINGERPRINT := generic/aosp_cf_x86_64_phone/vsoc_x86_64:13/TP1A.220624.019/15212407:userdebug/test-keys
