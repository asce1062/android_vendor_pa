# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_p705,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

PREFS_FROM_SOURCE ?= false

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/p705/full_p705.mk)

PRODUCT_PACKAGES += Trebuchet

# Override AOSP build properties
PRODUCT_DEVICE := p705
PRODUCT_NAME := pa_p705
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P705
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=u0_open_eu \
    PRIVATE_BUILD_DESC="p705-user 4.4.4 KTU84Q 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p705/4.4.4/KTU84Q/144808:user/release-keys"

endif
