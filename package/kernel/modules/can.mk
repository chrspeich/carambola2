CAN_MENU:=CAN bus subsystem support

define KernelPackage/can
  SUBMENU:=$(CAN_MENU)
  TITLE:=CAN bus subsystem support
  DEPENDS:=
  KCONFIG:=CONFIG_CAN \
      CONFIG_CAN_EMS_USB=n \
      CONFIG_CAN_ESD_USB2=n \
      CONFIG_CAN_PEAK_USB=n \
      CONFIG_CAN_SOFTING=n \
      CONFIG_NET_EMATCH_CANID=n \
      CONFIG_CAN_CALC_BITTIMING=y \
      CONFIG_CAN_DEBUG_DEVICES=y
  FILES:=$(LINUX_DIR)/net/can/can.ko
  AUTOLOAD:=$(call AutoLoad,90,can)
endef

define KernelPackage/can/description
  CAN bus subsystem support
endef

$(eval $(call KernelPackage,can))

define KernelPackage/can-raw
  SUBMENU:=$(CAN_MENU)
  TITLE:=Raw CAN Protocol (raw access with CAN-ID filtering)
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_RAW
  FILES:=$(LINUX_DIR)/net/can/can-raw.ko
  AUTOLOAD:=$(call AutoLoad,90,can-raw)
endef

define KernelPackage/can-raw/description
 Raw CAN Protocol (raw access with CAN-ID filtering)
endef

$(eval $(call KernelPackage,can-raw))

define KernelPackage/can-bcm
  SUBMENU:=$(CAN_MENU)
  TITLE:=Broadcast Manager CAN Protocol (with content filtering)
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_BCM
  FILES:=$(LINUX_DIR)/net/can/can-bcm.ko
  AUTOLOAD:=$(call AutoLoad,90,can-bcm)
endef

define KernelPackage/can-bcm/description
 Broadcast Manager CAN Protocol (with content filtering)
endef

$(eval $(call KernelPackage,can-bcm))

define KernelPackage/can-gw
  SUBMENU:=$(CAN_MENU)
  TITLE:=CAN Gateway/Router (with netlink configuration)
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_GW
  FILES:=$(LINUX_DIR)/net/can/can-gw.ko
  AUTOLOAD:=$(call AutoLoad,90,can-gw)
endef

define KernelPackage/can-gw/description
 CAN Gateway/Router (with netlink configuration)
endef

$(eval $(call KernelPackage,can-gw))

define KernelPackage/can-vcan
  SUBMENU:=$(CAN_MENU)
  TITLE:=Virtual Local CAN Interface
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_VCAN
  FILES:=$(LINUX_DIR)/drivers/net/can/vcan.ko
  AUTOLOAD:=$(call AutoLoad,90,vcan)
endef

define KernelPackage/can-vcan/description
 Kernel support for CAN via MCP251X
endef

$(eval $(call KernelPackage,can-vcan))

define KernelPackage/can-slcan
  SUBMENU:=$(CAN_MENU)
  TITLE:=Serial / USB serial CAN Adaptors
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_SLCAN
  FILES:=$(LINUX_DIR)/drivers/net/can/slcan.ko
  AUTOLOAD:=$(call AutoLoad,90,slcan)
endef

define KernelPackage/can-slcan/description
 Serial / USB serial CAN Adaptors
endef

$(eval $(call KernelPackage,can-slcan))

define KernelPackage/can-dev
  SUBMENU:=$(CAN_MENU)
  TITLE:= Platform CAN drivers with Netlink support
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_DEV
  FILES:=$(LINUX_DIR)/drivers/net/can/can-dev.ko
  AUTOLOAD:=$(call AutoLoad,90,can-dev)
endef

define KernelPackage/can-dev/description
  Platform CAN drivers with Netlink support
endef

$(eval $(call KernelPackage,can-dev))

define KernelPackage/can-mcp251x
  SUBMENU:=$(CAN_MENU)
  TITLE:=CAN MCP251X driver
  DEPENDS:=kmod-can-dev
  KCONFIG:=CONFIG_CAN_MCP251X
  FILES:=$(LINUX_DIR)/drivers/net/can/mcp251x.ko
  AUTOLOAD:=$(call AutoLoad,90,mcp251x)
endef

define KernelPackage/mcp251x/description
 Kernel support for CAN via MCP251X
endef

$(eval $(call KernelPackage,can-mcp251x))

define KernelPackage/can-pch
  SUBMENU:=$(CAN_MENU)
  TITLE:=Intel EG20T PCH CAN controller
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_PCH_CAN
  FILES:=$(LINUX_DIR)/drivers/net/can/pch_can.ko
  AUTOLOAD:=$(call AutoLoad,90,pch_can)
endef

define KernelPackage/can-pch/description
 Intel EG20T PCH CAN controller
endef

$(eval $(call KernelPackage,can-pch))

define KernelPackage/can-sja1000
  SUBMENU:=$(CAN_MENU)
  TITLE:=Philips/NXP SJA1000 devices
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_SJA1000
  FILES:=$(LINUX_DIR)/drivers/net/can/sja1000/sja1000.ko
  AUTOLOAD:=$(call AutoLoad,90,sja1000)
endef

define KernelPackage/can-sja1000/description
 Bosch C_CAN/D_CAN devices
endef

$(eval $(call KernelPackage,can-sja1000))

define KernelPackage/c-can
  SUBMENU:=$(CAN_MENU)
  TITLE:=Bosch C_CAN/D_CAN devices
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_C_CAN
  FILES:=$(LINUX_DIR)/drivers/net/can/c_can/c_can.ko
  AUTOLOAD:=$(call AutoLoad,90,c_can)
endef

define KernelPackage/c-can/description
 Bosch C_CAN/D_CAN devices
endef

$(eval $(call KernelPackage,c-can))

define KernelPackage/can-cc770
  SUBMENU:=$(CAN_MENU)
  TITLE:=Bosch C_CAN/D_CAN devices
  DEPENDS:=kmod-can
  KCONFIG:=CONFIG_CAN_CC770
  FILES:=$(LINUX_DIR)/drivers/net/can/cc770/cc770.ko
  AUTOLOAD:=$(call AutoLoad,90,cc770)
endef

define KernelPackage/can-cc770/description
 Bosch C_CAN/D_CAN devices
endef

$(eval $(call KernelPackage,can-cc770))
