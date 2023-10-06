#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm1q/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dm1q
PRODUCT_DEVICE := dm1q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S9110
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm1qzhx-user 13 TP1A.220624.014 S9110ZHS2AWI2 release-keys"

BUILD_FINGERPRINT := samsung/dm1qzhx/dm1q:13/TP1A.220624.014/S9110ZHS2AWI2:user/release-keys
