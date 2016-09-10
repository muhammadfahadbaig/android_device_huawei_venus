# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Time Zone data
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Some Extra Packages
PRODUCT_PACKAGES += \
    charger_res_images \
    charger \
    chargerled

# Kernel
PRODUCT_COPY_FILES += \
    device/huawei/venus/recovery/kernel:kernel
