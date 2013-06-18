#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL gee-common devices, and
# are also specific to gee-common devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/lge/gee-common/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Enable Torch
PRODUCT_PACKAGES += Torch

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.qcom.bt.sh \
    init.qcom.post_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.early_boot.sh \
    init.qcom.mdm_links.sh \
    init.qcom.modem_links.sh \
    init.qcom.ril.sh \
    init.qcom.usb.sh \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/gee-common/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/gee-common/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/gee-common/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/lge/gee-common/wifi/wpa_supplicant.conf:obj/etc/wifi/wpa_supplicant.conf \
    device/lge/gee-common/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio Configuration files
PRODUCT_COPY_FILES += \
    device/lge/gee-common/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/gee-common/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/gee-common/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/lge/gee-common/audio/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    device/lge/gee-common/audio/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
    device/lge/gee-common/audio/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
    device/lge/gee-common/audio/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
    device/lge/gee-common/audio/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
    device/lge/gee-common/audio/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    device/lge/gee-common/audio/snd_soc_msm_Sitar_Sglte:system/etc/snd_soc_msm/snd_soc_msm_Sitar_Sglte \
    device/lge/gee-common/audio/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
    device/lge/gee-common/audio/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm

# Configs
PRODUCT_COPY_FILES += \
    device/lge/gee-common/configs/thermald.conf:system/etc/thermald.conf \
    device/lge/gee-common/configs/egl.cfg:system/lib/egl/egl.cfg \
    device/lge/gee-common/configs/vold.fstab:system/etc/vold.fstab

# Media
PRODUCT_COPY_FILES += \
    device/lge/gee-common/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/gee-common/media/media_codecs.xml:system/etc/media_codecs.xml

# Non-Ramdisk Init Scripts
PRODUCT_COPY_FILES += \
    device/lge/gee-common/scripts/kickstart_checker.sh:system/etc/kickstart_checker.sh \
    device/lge/gee-common/scripts/efsbackup.sh:system/bin/efsbackup.sh

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/gee-common/keylayouts/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/lge/gee-common/keylayouts/external_kbd.kl:system/usr/keylayout/external_kbd.kl \
    device/lge/gee-common/keylayouts/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
    device/lge/gee-common/keylayouts/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/lge/gee-common/keylayouts/osp3-input.kl:system/usr/keylayout/osp3-input.kl

# Input calibration
PRODUCT_COPY_FILES += \
    device/lge/gee-common/input/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/gee-common/input/osp3-input.idc:system/usr/idc/osp3-input.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# NFC packages for gee-common
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/lge/gee-common/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/lge/gee-common/nfc/nfcee_access_debug.xml
endif

# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# Script for baseband name resolution
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fetch-swv:system/bin/fetch-swv

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic=dmic \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false \
    af.resampler.quality=4

# RIL sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# RIL properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0

# EGL Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    dalvik.vm.heapsize=36m \
    debug.enable.wl_log=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0

# Other build properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.enable=true \
    lpa.decode=false \
    tunnel.decode=true \
    tunnel.audiovideo.decode=true \
    lpa.use-stagefright=true

# System Props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true

PRODUCT_TAGS += dalvik.gc.type-precise

# System Props for audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.lowlatency.rec=false

# System Prop to select audio resampler quality
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=255

# System Prop to select MPQAudioPlayer by default on mpq8064
PRODUCT_PROPERTY_OVERRIDES += \
    mpq.audio.decode=true

# Simulate sdcard on /data/media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fuse_sdcard=true

# Use a higher text cache width due to our 2GBs of RAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_cache_width=2048

# Supports warmboot capabilities
PRODUCT_PROPERTY_OVERRIDES += \
    ro.warmboot.capability=1

#Snapdragon value add features
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.streaming.video.drs=true \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960

PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio_policy.msm8064 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    hci_qcomm_init

PRODUCT_PACKAGES += \
    power.msm8960

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

PRODUCT_PACKAGES += \
#	libmmcamera_interface2 \
#	libmmcamera_interface

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer

PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libgps.utils \
    gps.msm8960

PRODUCT_COPY_FILES += \
    device/lge/gee-common/gps/gps.conf:system/etc/gps.conf

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PACKAGES += \
    bdAddrLoader \
    libwfcu \
    conn_init

# QRNGD
PRODUCT_PACKAGES += qrngd

# Camera
#PRODUCT_PACKAGES += camera.msm8960

# Lights
PRODUCT_PACKAGES += lights.msm8960

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60 \
    persist.radio.kickstart=on

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.prerotation.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.recordable.rgba8888=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
