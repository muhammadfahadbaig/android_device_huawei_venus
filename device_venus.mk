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
	
# Ramdisk Files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/root/fstab.hi6250:root/fstab.hi6250 \
	$(LOCAL_PATH)/recovery/root/init.recovery.hi6250.rc:root/init.recovery.hi6250.rc \
	$(LOCAL_PATH)/recovery/root/ueventd.hi6250.rc:root/ueventd.hi6250.rc \
	$(LOCAL_PATH)/recovery/root/verity_key:root/verity_key \
	$(LOCAL_PATH)/recovery/root/sbin/teecd:root/sbin/teecd \
	$(LOCAL_PATH)/recovery/root/sbin/volisnotd:root/sbin/volisnotd
	
# Decryption Support (thanks to paulobrien)
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/huawei/venus/recovery/root/system/,root/system/) \
	