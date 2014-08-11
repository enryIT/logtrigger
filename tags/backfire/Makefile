# 
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=logtrigger
PKG_RELEASE:=001
PKG_VERSION:=1.$(PKG_RELEASE)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/kernel.mk

define Package/logtrigger
  SECTION:=Utils
  CATEGORY:=Utilities
  DEPENDS:=libuci
  TITLE:=logtrigger help you to monitor syslog and run some script for all or specific log event 
endef

TARGET_CPPFLAGS := \
	-I$(STAGING_DIR)/usr/include/ \
	-I$(LINUX_DIR)/include \
	-I$(PKG_BUILD_DIR) \
	-Wall \
	-DOPENWRT \
	$(TARGET_CPPFLAGS)

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS)" \
	$(MAKE) -C $(PKG_BUILD_DIR) \
		$(TARGET_CONFIGURE_OPTS) \
		OPENWRT=1 \
		LIBS="$(TARGET_LDFLAGS) -lm -luci"
endef

define Package/logtrigger/install
	$(CP) -a files/* $(1)/
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/logtrigger
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/logtrigger $(1)/usr/bin/logtrigger
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/logtrigger/info.sh $(1)/etc/logtrigger/info.sh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/logtrigger/info.lua $(1)/etc/logtrigger/info.lua
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/logtrigger/ipblock.sh $(1)/etc/logtrigger/ipblock.sh
endef

$(eval $(call BuildPackage,logtrigger))
