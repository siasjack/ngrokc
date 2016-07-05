#
# Copyright (C) 2010-2012 OpenWrt.org
#
# This Makefile and the code shipped in src/ is free software, licensed
# under the GNU Lesser General Public License, version 2.1 and later.
# See src/COPYING for more information.
#
# Refer to src/COPYRIGHT for copyright statements on the source files.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ngrokc
PKG_VERSION:=1.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_LICENSE:=FREE
PKG_LICENSE_FILES:=LICENSE

PKG_MAINTAINER:=jack chen<jk110333@126.com>

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/ngrokc
    SECTION:=base
    CATEGORY:=Jack
    TITLE:=ngrok c client
    DEPENDS:=+libopenssl +libstdcpp
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/ngrokc/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ngrokc $(1)/usr/sbin
endef

$(eval $(call BuildPackage,ngrokc))
