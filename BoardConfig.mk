# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2021-2022 TeamWin Recovery Project
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

# Путь к устройству
DEVICE_PATH := device/samsung/gtel3g

# Передача предкомпилированных файлов ядра и DTB
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_PREBUILT_DT_IMAGE := $(LOCAL_PATH)/prebuilt/dt.img

# Архитектура
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Загрузчик
TARGET_BOOTLOADER_BOARD_NAME := sc8830
TARGET_NO_BOOTLOADER := true

# Платформа
TARGET_BOARD_PLATFORM := sc8830

# Утверждение OTA обновления
TARGET_OTA_ASSERT_DEVICE := SM-T561,SM-T560,gtel3g,gtelwifi,gtel3gxx,gtelwifixx,smt561,smt560

# Используемые предкомпилированные ресурсы
TARGET_IGNORE_PREBUILT_KERNEL_CHECKSUM := true
BOARD_KERNEL_SEPARATED_DT := true
TARGET_BUILD_KERNEL_WITHOUT_KERNEL_CONFIG := true
INTERNAL_KERNEL_CLEANING := true

# Размер блока Flash
BOARD_FLASH_BLOCK_SIZE := 131072

# Конфигурация RAMdisk и Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Специфические флаги TWRP
BOARD_USE_CUSTOM_RECOVERY_FONT := roboto_10x18.h
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
SP1_NAME := internal_sd
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_THEME := portrait_hdpi
TW_INTERNAL_STORAGE_PATH := /data/media/0
TW_INTERNAL_STORAGE_MOUNT_POINT := data
TW_EXTERNAL_STORAGE_PATH := /storage/sdcard1
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_MAX_BRIGHTNESS := 255
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := ru
TW_EXCLUDE_APEX := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_LPTOOLS := true
TW_EXCLUDE_LPDUMP := true
TW_EXCLUDE_SUPERSU := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true

# Шифрование (раскомментируйте, если ваше устройство поддерживает шифрование)
# TW_INCLUDE_CRYPTO := true

# Версия устройства
TW_DEVICE_VERSION := SM-T561 by SK
