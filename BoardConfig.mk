# Copyright (C) 2017-2018 The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from common
#include device/samsung/msm8916-common/BoardConfigPlatform.mk
include device/samsung/gte-common/BoardConfigCommon.mk

PLATFORM_PATH := device/samsung/gt58lte

# Init
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(PLATFORM_PATH)/init/init_gta.cpp

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58lte,gt58ltexx,SM-T355Y

# Low Latency
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

# Audio
USE_QCOM_MIXER_PATHS := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth


TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/lib/hw/audio.primary.msm8916.so=25 \
    /vendor/lib/hw/camera.vendor.msm8916.so=25 \
    /vendor/lib/hw/sensors.vendor.msm8916.so=25

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58lte_aus_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
#ToDo: Subtract space used for encryption (See nubian prince repo)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := true
