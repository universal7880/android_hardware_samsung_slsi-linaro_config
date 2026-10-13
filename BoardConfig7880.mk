#
# Copyright (C) 2022 The LineageOS Project
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

TARGET_LINUX_KERNEL_VERSION := 3.18
TARGET_SOC_BASE := exynos7880


BOARD_HWC_VERSION := libhwc1
# The Mali and camera blobs require the Exynos7880 gralloc handle layout.
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true
BOARD_USES_EXYNOS_GRALLOC_VERSION := 0
BOARD_USES_LEGACY_GRALLOC := true
BOARD_EXYNOS_GRALLOC_INCLUDE_DIR := hardware/samsung_slsi-linaro/graphics/exynos7880/include

# VR Front buffer
#BOARD_USES_VR_FRONT_BUFFER := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# HWComposer
BOARD_EXYNOS_HWC_FULL_RANGE_YUV := true
BOARD_EXYNOS_HWC_LEGACY_DECON := true
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
#BOARD_USES_HWC_SERVICES := true

# Device Tree
BOARD_USES_DT := true

# WiFiDisplay
#BOARD_USES_VIRTUAL_DISPLAY := true - depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true
BOARD_USES_FIMG2D_M2M1SHOT2 := false

# SCALER
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_SCALER_M2M1SHOT := true

BOARD_USES_LEGACY_LIBSCALER := true

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
