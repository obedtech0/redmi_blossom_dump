#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from blossom device
$(call inherit-product, device/xiaomi/blossom/device.mk)

PRODUCT_DEVICE := blossom
PRODUCT_NAME := lineage_blossom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := blossom
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kenvyra_blossom-userdebug 13 TQ3A.230705.001 eng.nobody.20230721.230502 test-keys"

BUILD_FINGERPRINT := Redmi/kenvyra_blossom/blossom:13/TQ3A.230705.001/nobody07212304:userdebug/test-keys
