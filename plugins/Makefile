include $(TOPDIR)/rules.mk
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

include $(INCLUDE_DIR)/package.mk

define Package/plugins
SECTION:=utils
CATEGORY:=Utilities
TITLE:= plugins for ppip system
URL:=https://github.com/LeoHao
endef

define Package/plugins/description
If you can't figure out what this program does, you're probably brain-dead and need immediate medical attention.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef
define Package/plugins/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	mkdir -p $(1)/usr/lib/lua/plugins
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp ./log.lua $(1)/usr/lib/lua/luci/log.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	cp ./files/controller/plugins.lua $(1)/usr/lib/lua/luci/controller/plugins.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	mkdir -p $(1)/usr/lib/lua/luci/model/cbi/admin_plugins
	cp ./files/model/special.lua $(1)/usr/lib/lua/luci/model/cbi/admin_plugins/special.lua
	cp ./files/model/turbo.lua $(1)/usr/lib/lua/luci/model/cbi/admin_plugins/turbo.lua
	cp ./files/model/group.lua $(1)/usr/lib/lua/luci/model/cbi/admin_plugins/group.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	mkdir -p $(1)/usr/lib/lua/luci/view/admin_plugins
	cp ./files/view/special.htm $(1)/usr/lib/lua/luci/view/admin_plugins/special.htm
	cp ./files/view/turbo.htm $(1)/usr/lib/lua/luci/view/admin_plugins/turbo.htm
	cp ./files/view/group.htm $(1)/usr/lib/lua/luci/view/admin_plugins/group.htm
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
endef
$(eval $(call BuildPackage,plugins))
