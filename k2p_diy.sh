#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: Discuzamoy
#=================================================
# Modify default IP
# rm -rf package/openwrt-package/luci-app-smartdns
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-package
# rm -rf package/openwrt-package/luci-app-ssr-plus
# ./scripts/feeds update -a
# ./scripts/feeds install
sed -i 's/root::0:0:99999:7:::/root:$1$s0nqgFtf$90M3V1HtmSsyb.gNF53Xd1:18307:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/OpenWrt/Discuzamoy/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.99.2/g' package/base-files/files/bin/config_generate
# sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
