#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Infinity-X configurations
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/flame/device.mk)

# Inherit proprietary vendor files
$(call inherit-product, vendor/xiaomi/flame/flame-vendor.mk)

# Device identifier
PRODUCT_DEVICE := flame
PRODUCT_NAME := infinity_flame
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24108PCE2I
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="flame-user 15 AQ3A.241213.002 OS2.0.203.0.VGUINXM release-keys" \
    BuildFingerprint=POCO/flame_p_in/flame:15/AQ3A.241213.002/OS2.0.203.0.VGUINXM:user/release-keys \
    DeviceName=flame \
    DeviceProduct=flame_p_in

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Infinity-X
INFINITY_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
