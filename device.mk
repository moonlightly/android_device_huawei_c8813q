$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/c8813/c8813-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8813/overlay
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7627a \
    copybit.msm7627a \
    lights.msm7627a \
    hwcomposer.msm7627a \
    libtilerenderer \
    liboverlay \
    libgenlock \
    libmemalloc \
    libI420colorconvert \
    libhwcexternal \
    libhwcservice \
    libqdutils
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7627a \
    audio_policy.msm7627a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.msm7627a \
    libloc_api-rpc \
    Camera

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# iptables
PRODUCT_PACKAGES += \
    iptables \
    ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
    
PRODUCT_COPY_FILES += \
    device/huawei/c8813/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/c8813/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/c8813/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/huawei/c8813/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/c8813/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/huawei/c8813/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/huawei/c8813/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh

PRODUCT_COPY_FILES += \
    device/huawei/c8813/ramdisk/e2fsck_s:root/sbin/e2fsck_s \
    device/huawei/c8813/ramdisk/resize2fs_s:root/sbin/resize2fs_s \
    device/huawei/c8813/ramdisk/resize2fs_wrapper:root/sbin/resize2fs_wrapper \
    device/huawei/c8813/ramdisk/tp/1294018.img:root/tp/1294018.img

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/athtcmd_ram.bin:system/wifi/ath6k/athtcmd_ram.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/caldata.bin:system/wifi/ath6k/caldata.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/caldata_MSM8X25_c8813.bin:system/wifi/ath6k/caldata_MSM8X25_c8813.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/fw-3.bin:system/wifi/ath6k/fw-3.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/nullTestFlow.bin:system/wifi/ath6k/nullTestFlow.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/softmac:system/wifi/ath6k/softmac \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/utf.bin:system/wifi/ath6k/utf.bin \
    device/huawei/c8813/prebuilt/system/lib/modules/pppoe_dzc.ko:system/lib/modules/pppoe_dzc.ko \
    device/huawei/c8813/prebuilt/system/lib/modules/pppoe.ko:system/lib/modules/pppoe.ko \
    device/huawei/c8813/prebuilt/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/huawei/c8813/prebuilt/system/lib/modules/ar6000.ko:system/lib/modules/ar6000.ko

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/c8813/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/c8813/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/huawei/c8813/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/c8813/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/c8813/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    device/huawei/c8813/prebuilt/system/etc/init.target.8x25.sh:system/system/etc/init.target.8x25.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/huawei/c8813/prebuilt/system/etc/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/huawei/c8813/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf \
    device/huawei/c8813/prebuilt/system/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/huawei/c8813/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/c8813/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/c8813/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/c8813/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/c8813/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# if we use .34 kernel change 
PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/c8813/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/c8813/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/c8813/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/c8813/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/c8813/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/c8813/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/c8813/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

PRODUCT_COPY_FILES += \
    device/huawei/c8813/prebuilt/system/lib/hw/copybit.msm7627a.so:system/lib/hw/copybit.msm7627a.so \
    device/huawei/c8813/prebuilt/system/lib/hw/gralloc.msm7627a.so:system/lib/hw/gralloc.msm7627a.so \
    device/huawei/c8813/prebuilt/system/lib/hw/hwcomposer.msm7627a.so:system/lib/hw/hwcomposer.msm7627a.so \
    device/huawei/c8813/prebuilt/system/lib/libgenlock.so:system/lib/libgenlock.so \
    device/huawei/c8813/prebuilt/system/lib/libhwcexternal.so:system/lib/libhwcexternal.so \
    device/huawei/c8813/prebuilt/system/lib/libhwcservice.so:system/lib/libhwcservice.so \
    device/huawei/c8813/prebuilt/system/lib/libmemalloc.so:system/lib/libmemalloc.so \
    device/huawei/c8813/prebuilt/system/lib/liboverlay.so:system/lib/liboverlay.so \
    device/huawei/c8813/prebuilt/system/lib/libqdMetaData.so:system/lib/libqdMetaData.so \
    device/huawei/c8813/prebuilt/system/lib/libqdutils.so:system/lib/libqdutils.so \
    device/huawei/c8813/prebuilt/system/lib/libtilerenderer.so:system/lib/libtilerenderer.so

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_c8813
PRODUCT_DEVICE := c8813
PRODUCT_BRAND := huawei

