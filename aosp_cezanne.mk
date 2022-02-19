#
# Copyright (C) 2021 StatiXOS
# Copyright (C) 2021 Vaisakh Murali
#
# SPDX-License-Identifer: GPL-2.0-only

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some PE source stuff
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/cezanne/device.mk)

# Target specifications
PRODUCT_NAME := aosp_cezanne
PRODUCT_DEVICE := cezanne
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi K30Ultra
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/cezanne/cezanne:11/RP1A.200720.011/V12.5.7.0.RJNCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cezanne-user-11-RP1A.200720.011-V12.5.7.0.RJNCNXM-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
