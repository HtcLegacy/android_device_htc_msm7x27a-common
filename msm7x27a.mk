#
# Copyright (C) 2011 The CyanogenMod Project
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

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)

PRODUCT_PACKAGE_OVERLAYS += device/htc/msm7x27a-common/overlay

# System Properties
-include device/htc/msm7x27a-common/system_prop.mk

PRODUCT_BOOT_JARS += qcmediaplayer

# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libgenlock \
    liboverlay \
    libtilerenderer \
    libqdMetaData
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudioutils \
    libaudio-resampler

 # GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a
    
#Health HAL
PRODUCT_PACKAGES += \
    libhealthd.msm7x27a

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    libsurfaceflinger_client

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libdashplayer

# qcmediaplayer
PRODUCT_PACKAGES += \
    qcmediaplayer

 # WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    libnetcmdiface

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    librpc \
    com.android.future.usb.accessory \
    HwaSettings
 
 # Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise	         
