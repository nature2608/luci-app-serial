include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-series
PKG_VERSION=1.0
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-series
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=unlock mentohust
	PKGARCH:=all
endef

define Package/luci-app-mentohust/description
	This package contains LuCI configuration pages for unlock mentohust.
endef

define Package/luci-app-series/conffiles
/etc/config/series
endef


define Build/Compile
endef

define Package/luci-app-series/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_CONF) ./files/root/etc/config/series $(1)/etc/config/series
	$(INSTALL_BIN) ./files/root/etc/series.sh $(1)/etc/series.sh
	$(INSTALL_DATA) ./files/root/etc/mentohust.lua $(1)/etc/mentohust.lua
	$(INSTALL_DATA) ./files/root/etc/jmusupplicant.lua $(1)/etc/jmusupplicant.lua
	$(INSTALL_DATA) ./files/luci/model/cbi/series.lua $(1)/usr/lib/lua/luci/model/cbi/series.lua
	$(INSTALL_DATA) ./files/luci/controller/series.lua $(1)/usr/lib/lua/luci/controller/series.lua
endef

$(eval $(call BuildPackage,luci-app-series))
