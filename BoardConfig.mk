USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := g150n0

# Platform
TARGET_BOARD_PLATFORM := exynos3475

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_KERNEL_CONFIG := exynos3475-novellte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos3475

# BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE :=  0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/g150n0/dt.img --ramdisk_offset 0x01000000 --tags_offset 0x00000100

BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2254438400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5150605312
BOARD_FLASH_BLOCK_SIZE := 131072

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

# Use our own init.rc without setting up functionfs
TARGET_RECOVERY_DEVICE_MODULES += init.recovery.usb.rc init.recovery.universal3475.rc

RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file

TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

TW_INCLUDE_FB2PNG := true
TW_INCLUDE_L_CRYPTO := true

# Provide our own init.recovery.usb.rc
TW_EXCLUDE_DEFAULT_USB_INIT := true

TW_EXCLUDE_SUPERSU := true
