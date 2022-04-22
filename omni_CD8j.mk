#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TECNO-CD8j device
$(call inherit-product, device/TECNO/CD8j/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
	android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CD8j
PRODUCT_NAME := omni_CD8j
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Camon 15 Premier
PRODUCT_MANUFACTURER := TECNO MOBILE LIMITED

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=TECNO-CD8j \
    PRODUCT_DEVICE=TECNO_CD8j
