#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
echo '修改机器名称'
sed -i 's/OpenWrt/SakuraTv/g' package/base-files/files/bin/config_generate

echo '修改网关地址'
sed -i 's/192.168.1.1/192.168.1.16/g' package/base-files/files/bin/config_generate

echo '去除默认bootstrap主题'
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

echo '修改banner'
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/
