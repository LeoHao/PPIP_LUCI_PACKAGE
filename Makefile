include $(TOPDIR)/rules.mk  
# Name and release number of this package  
PKG_NAME:=plugins
PKG_RELEASE:=1  

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)  

include $(INCLUDE_DIR)/package.mk  

define Package/plugins  
SECTION:=utils  
CATEGORY:=Utilities  
TITLE:=test -- prints a snarky message  
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
$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
cp ./files/controller/plugins.lua $(1)/usr/lib/lua/luci/controller/plugins.lua
$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
mkdir -p $(1)/usr/lib/lua/luci/model/cbi/admin_plugins
cp ./files/model/special.lua $(1)/usr/lib/lua/luci/model/cbi/admin_plugins/special.lua
$(INSTALL_DIR) $(1)/etc/init.d
$(INSTALL_DIR) $(1)/etc/config

endef


$(eval $(call BuildPackage,plugins))
