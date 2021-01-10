# luci-app-plugins
#
#PPIP is another custom package from LuCI that tries
#to bring a better user experience with a better
#network configuration for LEDE/OpenWRT.
#It adds a series of customization features such as user's use of tunnel
#networking between users website peer-to-peer speedup. etc.
#
# Copyright 2020 LeoHao <blueseamyheart@hotmail.com>
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=PPIP Plugins

# Name and release number of this package
PKG_NAME:=plugins
PKG_VERSION := 1.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Leo Hao <blueseamyheart@hotmail.com>

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/LeoHao/PPIP_LUCI_PACKAGE.git
PKG_SOURCE_VERSION:=618201c955d7ec37633716401344b3818486e909

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../../luci.mk

define Package/plugins/description
#plugins is a series of customization features such as user's use of tunnel
#networking between users website peer-to-peer speedup
endef


define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
$(call Build/Compile/Default,clean compile)
endef

define Package/plugins/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp ./log.lua $(1)/usr/lib/lua/luci/log.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	cp ./controller/* $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	mkdir -p $(1)/usr/lib/lua/luci/model/cbi/admin_plugins
	cp ./model/* $(1)/usr/lib/lua/luci/model/cbi/admin_plugins/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	mkdir -p $(1)/usr/lib/lua/luci/view/admin_plugins
	cp ./view/* $(1)/usr/lib/lua/luci/view/admin_plugins/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
endef

$(eval $(call BuildPackage,plugins))
