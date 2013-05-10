$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/c8813/c8813-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8813/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27a \
    audio.primary.msm7x27a \
    audio_policy.conf \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.c8813 \
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
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
    
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
    device/huawei/c8813/prebuilt/system/wifi/ath6k/athtcmd_ram.bin:system/etc/firmware/ath6k/athtcmd_ram.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/caldata.bin:system/etc/firmware/ath6k/caldata.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/caldata_MSM8X25_c8813.bin:system/etc/firmware/ath6k/caldata_MSM8X25_c8813.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/caldata_MSM8X25_c8813.bin:system/etc/firmware/ath6k/bdata.SD31.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/fw-3.bin:system/etc/firmware/ath6k/fw-3.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/nullTestFlow.bin:system/etc/firmware/ath6k/nullTestFlow.bin \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/softmac:system/etc/firmware/ath6k/softmac \
    device/huawei/c8813/prebuilt/system/wifi/ath6k/utf.bin:system/etc/firmware/ath6k/utf.bin \
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
    device/huawei/c8813/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/c8813/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/c8813/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    device/huawei/c8813/prebuilt/system/etc/init.target.8x25.sh:system/etc/init.target.8x25.sh \
    device/huawei/c8813/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/huawei/c8813/prebuilt/system/etc/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/huawei/c8813/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf \
    device/huawei/c8813/prebuilt/system/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/huawei/c8813/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/c8813/prebuilt/system/etc/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

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

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_c8813
PRODUCT_DEVICE := c8813
PRODUCT_BRAND := huawei

