# Device path
LOCAL_PATH := device/vivo/PD1911F_EX

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# Platform
TARGET_BOARD_PLATFORM := sdm665
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_HEADER_VERSION := 1
BOARD_HEADER_SIZE := 1648
BOARD_RECOVERY_DTBO_SIZE := 6483904
BOARD_RECOVERY_DTBO_OFFSET := 44277760
BOARD_OS_VERSION := 9.0.0
BOARD_OS_PATCH_LEVEL := 2019-06
# Kernel offsets
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# Kernel CMDLINE
BOARD_KERNEL_CMDLINE = androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += earlycon=null
BOARD_KERNEL_CMDLINE += androidboot.console=null
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += androidboot.configfs=true
BOARD_KERNEL_CMDLINE += swiotlb=1
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += product.version=PD1911F_EX_A_1.5.3
BOARD_KERNEL_CMDLINE += androidboot.securebootkeyhash=2c0a52ffbd8db687b56f6a98d8840f46597a4dde6d9dc8d00039873ce6d74f60
BOARD_KERNEL_CMDLINE += androidboot.securebootkeyver=4
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
# Make boot image arguments
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

#Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USES_MKE2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Qcom specific fixes
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Recovery device modules
# TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0

########
# TWRP #
########
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 2340
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_BATT_PERCENT := false
TW_USE_TOOLBOX := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_HAS_EDL_MODE := true

# Display
TW_THEME := portrait_hdpi
# DEVICE_RESOLUTION := 1080x2340 (deprecated)
TW_DEFAULT_BRIGHTNESS := 188
TW_MAX_BRIGHTNESS := 1023
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true

# Locale
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en

# Excludes
TW_EXCLUDE_TWRPAPP := true

# Encryption
PLATFORM_SECURITY_PATCH := 2019-06-01
# TW_INCLUDE_CRYPTO := true
# TW_INCLUDE_CRYPTO_FBE := true
# TW_INCLUDE_FBE := true

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
