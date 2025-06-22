# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Тема TWRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device_version=SM-T561_by_SK

# Передача предкомпилированных файлов ядра и DTB
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel:kernel
BOARD_PREBUILT_DT_IMAGE := $(LOCAL_PATH)/prebuilt/dt.img

# Пакеты приложений
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Имя продукта и бренд
PRODUCT_NAME := twrp_gtel3g
PRODUCT_DEVICE := gtel3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T561
PRODUCT_MANUFACTURER := SAMSUNG
