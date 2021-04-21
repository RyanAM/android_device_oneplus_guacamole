#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += \
    vendor.lineage.camera.motor@1.0 \
    vendor.lineage.camera.motor@1.0-service.guacamole \
    OnePlusCameraHelper
    
    PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-guacamole.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa   
### End Ubuntu Touch ###

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.display.guacamole.rc
