# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit device configuration
$(call inherit-product, device/huawei/c8813q/c8813q.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Setup device configuration
PRODUCT_NAME := cm_c8813q
PRODUCT_DEVICE := c8813q
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI C8813Q
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := C8813q

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=c8813q \
	BUILD_FINGERPRINT=huawei/c8813q:4.1.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160
