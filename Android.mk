# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := LatinIMEExtension

LOCAL_CERTIFICATE := shared

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets

# Do not compress dictionary files to mmap dict data runtime
LOCAL_AAPT_FLAGS := -0 .dict

# Include all the resources regardless of system supported locales
LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true

LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)
