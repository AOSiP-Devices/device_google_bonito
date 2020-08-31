#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

DEVICE_PACKAGE_OVERLAYS += device/google/bonito/overlay-aosip
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += device/google/bonito/overlay/packages/apps/Bluetooth

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# GMS
WITH_GMS_FI := true

# Google device
PRODUCT_PACKAGES += \
    SystemUIGoogle

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUIGoogle

# Partitions
AB_OTA_PARTITIONS += \
    vendor

# Privapp Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp-permissions-aosp-extended.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-aosp-extended.xml

# Properties
TARGET_VENDOR_PROP := $(LOCAL_PATH)/vendor.prop

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libtinyxml

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom
