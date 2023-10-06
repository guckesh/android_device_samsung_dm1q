#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter dm1q,$(TARGET_DEVICE)),)

WIFI_FIRMWARE_SYMLINKS := $(TARGET_OUT_VENDOR)/firmware/
$(WIFI_FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating WiFi firmware symlinks: $@"
	@mkdir -p $@/wlan/qca_cld/qca6490
	$(hide) ln -sf /data/vendor/firmware/wlanmdsp.mbn $@/wlanmdsp.otaupdate
	$(hide) ln -sf /mnt/vendor/persist/qca6490/wlan_mac.bin $@/wlan/qca_cld/qca6490/wlan_mac.bin
	$(hide) ln -sf /vendor/etc/wifi/qca6490/WCNSS_qcom_cfg.ini $@/wlan/qca_cld/qca6490/WCNSS_qcom_cfg.ini

ALL_DEFAULT_INSTALLED_MODULES += \
    $(WIFI_FIRMWARE_SYMLINKS)

endif
