# Copyright 2014 The Android Open Source Project
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

include device/sony/kitakami-common/PlatformConfigOmni.mk

TARGET_BOOTLOADER_BOARD_NAME := E5823

# For AndroPlus Kernel
#TARGET_KERNEL_SOURCE := kernel/sony/kitakami2
#TARGET_KERNEL_CONFIG := msm8994-perf_defconfig 

TARGET_KERNEL_SOURCE := kernel/sony/msm
TARGET_KERNEL_CONFIG := aosp_kitakami_suzuran_defconfig
 
BOARD_KERNEL_CMDLINE += androidboot.hardware=suzuran

TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

# TWRP Recovery
DEVICE_RESOLUTION := 720x1280
TW_THEME := portrait_hdpi
TW_IGNORE_ABS_MT_TRACKING_ID := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
BOARD_USES_QC_TIME_SERVICES := true
