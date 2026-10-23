# Legacy Exynos modules explicitly opt in to these settings.

ifneq ($(filter libhwc1 true,$(BOARD_HWC_VERSION) $(BOARD_USES_FIMGAPI_V5X)),)
exynos_legacy_cflags :=

ifeq ($(BOARD_DYNAMIC_RECOMPOSITION_DISABLED), true)
	exynos_legacy_cflags += -DDYNAMIC_RECOMPOSITION_DISABLED
endif

ifeq ($(TARGET_USES_UNIVERSAL_LIBHWJPEG), true)
	exynos_legacy_cflags += -DUSES_UNIVERSAL_LIBHWJPEG
endif

ifeq ($(BOARD_USES_FIMC), true)
	exynos_legacy_cflags += -DUSES_FIMC
else
	exynos_legacy_cflags += -DUSES_GSCALER
endif

ifeq ($(BOARD_USES_IP_SERVICE), true)
	exynos_legacy_cflags += -DIP_SERVICE
endif

ifeq ($(BOARD_USES_HWC_SERVICES),true)
	exynos_legacy_cflags += -DHWC_SERVICES
ifeq ($(BOARD_USE_S3D_SUPPORT),true)
	exynos_legacy_cflags += -DS3D_SUPPORT
endif
endif

ifeq ($(HWC_SKIP_VALIDATE),true)
	exynos_legacy_cflags += -DHWC_SKIP_VALIDATE
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY), true)
	exynos_legacy_cflags += -DUSES_VIRTUAL_DISPLAY
endif

ifeq ($(BOARD_USES_DISABLE_COMPOSITIONTYPE_GLES), true)
	exynos_legacy_cflags += -DUSES_DISABLE_COMPOSITIONTYPE_GLES
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB), true)
	exynos_legacy_cflags += -DUSES_VIRTUAL_DISPLAY_DECON_EXT_WB
endif

ifeq ($(BOARD_USES_3MSC_FOR_WFD), true)
        exynos_legacy_cflags += -DUSES_3MSC_FOR_WFD
endif

ifeq ($(BOARD_USES_2MSC_FOR_WFD), true)
        exynos_legacy_cflags += -DUSES_2MSC_FOR_WFD
endif

ifeq ($(BOARD_USES_FB_PHY_LINEAR),true)
	exynos_legacy_cflags += -DUSE_FB_PHY_LINEAR
endif

ifeq ($(BOARD_TV_PRIMARY),true)
	exynos_legacy_cflags += -DTV_PRIMARY
endif
ifeq ($(BOARD_HDMI_INCAPABLE), true)
	exynos_legacy_cflags += -DHDMI_INCAPABLE
ifeq ($(BOARD_HDMI_PRIMARY_DISPLAY), true)
    exynos_legacy_cflags += -DHDMI_PRIMARY_DISPLAY
endif
else
ifeq ($(BOARD_USES_NEW_HDMI), true)
	exynos_legacy_cflags += -DUSES_NEW_HDMI
endif
ifeq ($(BOARD_USES_GSC_VIDEO), true)
	exynos_legacy_cflags += -DGSC_VIDEO
endif
ifeq ($(BOARD_USES_VP_VIDEO),true)
	exynos_legacy_cflags += -DVP_VIDEO
endif
endif

ifeq ($(BOARD_USES_ONLY_GSC0_GSC1),true)
	exynos_legacy_cflags += -DUSES_ONLY_GSC0_GSC1
endif

ifeq ($(BOARD_USES_DT), true)
	exynos_legacy_cflags += -DUSES_DT
endif

ifeq ($(BOARD_USES_U4A),true)
	exynos_legacy_cflags += -DUSES_U4A
endif

ifeq ($(BOARD_USES_WINDOW_UPDATE), true)
	exynos_legacy_cflags += -DUSES_WINDOW_UPDATE
endif

ifeq ($(BOARD_USES_DPU), true)
	exynos_legacy_cflags += -DUSES_DPU
endif

ifeq ($(BOARD_USES_HWC2_TINY), true)
exynos_legacy_cflags += -DUSES_HWC2_TINY
endif

ifeq ($(TARGET_USES_HWC2), true)
	exynos_legacy_cflags += -DTARGET_USES_HWC2
endif

ifeq ($(BOARD_USES_HWC2), true)
	exynos_legacy_cflags += -DUSES_HWC2
endif

ifeq ($(BOARD_USES_VPP), true)
	exynos_legacy_cflags += -DUSES_VPP
endif

ifeq ($(BOARD_USES_VPP_V2), true)
	exynos_legacy_cflags += -DUSES_VPP_V2
endif

ifeq ($(TARGET_SOC), exynos8890)
	exynos_legacy_cflags += -DUSES_DECON_AFBC_DECODER
endif

ifeq ($(TARGET_SOC), exynos7570)
	exynos_legacy_cflags += -DUSES_EXYNOS7570
endif

ifeq ($(TARGET_SOC), exynos7870)
	exynos_legacy_cflags += -DUSES_EXYNOS7870
endif

ifeq ($(BOARD_USE_GRALLOC_FLAG_FOR_HDMI), true)
	exynos_legacy_cflags += -DUSE_GRALLOC_FLAG_FOR_HDMI
endif

ifeq ($(BOARD_USE_HDMI_ON_IN_SUSPEND), true)
	exynos_legacy_cflags += -DHDMI_ON_IN_SUSPEND
endif

ifeq ($(BOARD_USES_DUAL_DISPLAY), true)
	exynos_legacy_cflags += -DUSES_DUAL_DISPLAY
endif

ifeq ($(TARGET_ARCH), arm64)
	exynos_legacy_cflags += -DUSES_ARCH_ARM64
endif

ifeq ($(BOARD_USES_DECON_64BIT_ADDRESS), true)
	exynos_legacy_cflags += -DUSES_DECON_64BIT_ADDRESS
endif

ifeq ($(BOARD_USES_EXYNOS_AFBC_FEATURE), true)
	exynos_legacy_cflags += -DUSES_AFBC_FEATURE
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 1)
exynos_legacy_cflags += -DGRALLOC_VERSION1
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 3)
exynos_legacy_cflags += -DGRALLOC_VERSION1
exynos_legacy_cflags += -DGRALLOC_VERSION3
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 4)
exynos_legacy_cflags += -DGRALLOC_VERSION1
exynos_legacy_cflags += -DGRALLOC_VERSION3
endif

ifeq ($(BOARD_USES_EXYNOS_FIMG4X), true)
    exynos_legacy_cflags += -DUSES_FIMG4X_BLIT
else
ifeq ($(BOARD_USES_EXYNOS_FIMG5X), true)
    exynos_legacy_cflags += -DUSES_FIMG5X_BLIT
endif
endif

ifeq ($(BOARD_USES_EXTERNAL_DISPLAY_POWERMODE), true)
    exynos_legacy_cflags += -DUSES_EXTERNAL_DISPLAY_POWERMODE
endif

ifeq ($(BOARD_USES_HDRUI_GLES_CONVERSION), true)
    exynos_legacy_cflags += -DUSES_HDR_GLES_CONVERSION
endif

ifeq ($(BOARD_USE_FULL_ST2094_40), true)
exynos_legacy_cflags += -DUSE_FULL_ST2094_40
endif

ifeq ($(BOARD_USES_FIMGAPI_V5X), true)
exynos_legacy_cflags += -DFIMGAPI_V5X
ifneq ($(BOARD_USES_FIMG2D_M2M1SHOT2), false)
exynos_legacy_cflags += -DFIMG2D_USE_M2M1SHOT2
endif
endif

ifeq ($(BOARD_EXYNOS_HWC_FULL_RANGE_YUV), true)
exynos_legacy_cflags += -DUSES_FULL_RANGE_YUV
endif

ifeq ($(BOARD_EXYNOS_HWC_LEGACY_DECON), true)
exynos_legacy_cflags += -DUSES_LEGACY_DECON
endif

$(call soong_config_set_string_list,exynos_legacy,cflags,$(strip $(exynos_legacy_cflags)))
endif

ifeq ($(BOARD_HWC_VERSION),libhwc1)
$(call soong_config_set,exynos_legacy,hwc1,true)
$(call soong_config_set,exynos_legacy,soc_base,$(TARGET_SOC_BASE))
$(call soong_config_set,exynos_legacy,bootloader_board,$(TARGET_BOOTLOADER_BOARD_NAME))
exynos_legacy_include_dirs := \
    $(BOARD_EXYNOS_GRALLOC_INCLUDE_DIR) \
    hardware/samsung_slsi-linaro/graphics/base/legacy/include \
    hardware/samsung_slsi-linaro/exynos5/include \
    hardware/samsung_slsi-linaro/graphics/base/include \
    hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1 \
    hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libhwcutils \
    hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libvppdisplay \
    hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC_BASE)/libhwcmodule \
    hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC_BASE)/libdisplaymodule \
    hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC_BASE)/libhwcutilsmodule \
    hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC_BASE)/libhdmimodule \
    hardware/samsung_slsi-linaro/graphics/base/legacy/libmpp
ifeq ($(BOARD_HDMI_INCAPABLE),true)
exynos_legacy_include_dirs += hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libhdmi_dummy
$(call soong_config_set,exynos_legacy,hdmi_incapable,true)
else
exynos_legacy_include_dirs += hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libvpphdmi hardware/samsung_slsi-linaro/exynos/kernel-$(TARGET_LINUX_KERNEL_VERSION)-headers
endif
ifeq ($(BOARD_USES_DUAL_DISPLAY),true)
$(call soong_config_set_string_list,exynos_legacy,display_extra_srcs,:$(TARGET_SOC_BASE)_legacy_display_secondary_sources)
endif
ifeq ($(BOARD_USES_VIRTUAL_DISPLAY),true)
$(call soong_config_set,exynos_legacy,virtual_display,true)
exynos_legacy_include_dirs += hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libvppvirtualdisplay hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC_BASE)/libvirtualdisplaymodule
endif
ifeq ($(BOARD_USES_HWC_SERVICES),true)
$(call soong_config_set,exynos_legacy,hwc_services,true)
exynos_legacy_include_dirs += hardware/samsung_slsi-linaro/graphics/base/legacy/libhwc1/libhwcService
endif
ifeq ($(BOARD_DISABLE_HWC_DEBUG),true)
$(call soong_config_set,exynos_legacy,hwc_debug_disabled,true)
endif
ifneq ($(BOARD_DISABLE_HWC_DEBUG),true)
$(call soong_config_set,exynos_legacy,hwc_debug,true)
endif
$(call soong_config_set_string_list,exynos_legacy,include_dirs,$(strip $(exynos_legacy_include_dirs)))
endif

ifeq ($(BOARD_USES_FIMGAPI_V5X),true)
$(call soong_config_set,exynos_legacy,fimg5x,true)
endif

ifeq ($(BOARD_USES_LEGACY_GRALLOC),true)
ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION),0)
$(call soong_config_set,arm_gralloc,gralloc_version,none)
$(call soong_config_set,exynos_legacy,gralloc0,true)
$(call soong_config_set,exynos_legacy,platform,$(TARGET_BOARD_PLATFORM))
$(call soong_config_set,exynos_legacy,gralloc_include_dir,$(BOARD_EXYNOS_GRALLOC_INCLUDE_DIR))
exynos_legacy_gralloc_cflags :=
ifneq ($(TARGET_SOC_BASE),exynos5420)
exynos_legacy_gralloc_cflags += -DUSES_EXYNOS_COMMON_GRALLOC
endif
ifneq ($(filter exynos7885 exynos7872,$(TARGET_SOC_BASE)),)
exynos_legacy_gralloc_cflags += -DEXYNOS_CHROMA_VSTRIDE_ALIGN -DCHROMA_VALIGN=$(BOARD_MFC_CHROMA_VALIGN)
endif
ifeq ($(BOARD_USES_EXYNOS5_GRALLOC_RANGE_FLUSH),true)
exynos_legacy_gralloc_cflags += -DGRALLOC_RANGE_FLUSH
endif
ifeq ($(BOARD_USES_EXYNOS5_CRC_BUFFER_ALLOC),true)
exynos_legacy_gralloc_cflags += -DUSES_EXYNOS_CRC_BUFFER_ALLOC
endif
ifeq ($(BOARD_USES_ALIGN_RESTRICTION),true)
exynos_legacy_gralloc_cflags += -DGRALLOC_MSCL_ALIGN_RESTRICTION -DGRALLOC_10B_ALIGN_RESTRICTION
endif
$(call soong_config_set_string_list,exynos_legacy,gralloc_cflags,$(strip $(exynos_legacy_gralloc_cflags)))
exynos_legacy_gralloc_include_dirs := \
    $(BOARD_EXYNOS_GRALLOC_INCLUDE_DIR) \
    hardware/samsung_slsi-linaro/exynos/legacy/include \
    hardware/samsung_slsi-linaro/exynos/include \
    hardware/samsung_slsi-linaro/exynos5/include
$(call soong_config_set_string_list,exynos_legacy,gralloc_include_dirs,$(exynos_legacy_gralloc_include_dirs))
endif
endif
