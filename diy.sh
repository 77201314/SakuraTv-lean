sed -i '33 d' package/lean/default-settings/files/zzz-default-settings
sed -i '33 d' package/lean/default-settings/files/zzz-default-settings
sed -i '44 d' package/lean/default-settings/files/zzz-default-settings
sed -i 's/exit 0//g' package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/snapshots/$version/g'  /etc/opkg/distfeeds.conf " >>package/lean/default-settings/files/zzz-default-settings
echo "echo \"DISTRIB_REVISION='$version'\" >> /etc/openwrt_release" >>package/lean/default-settings/files/zzz-default-settings
sed -i '52 d' package/lean/default-settings/files/zzz-default-settings
sed -i '52 d' package/lean/default-settings/files/zzz-default-settings
echo "rm -rf /tmp/luci-modulecache/" >>package/lean/default-settings/files/zzz-default-settings
echo "rm -f /tmp/luci-indexcache" >>package/lean/default-settings/files/zzz-default-settings
echo "exit 0" >>package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/SakuraTv/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.18/g' package/base-files/files/bin/config_generate
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/

#add sonme additional packages
git clone https://github.com/rufengsuixing/luci-app-adguardhome         package/adg
git clone https://github.com/vernesong/OpenClash                        package/clash

cat << EOF >> target/linux/ipq40xx/config-4.14
CONFIG_PMBUS=n
CONFIG_SENSORS_PMBUS=n
CONFIG_SENSORS_ADM1275=n
CONFIG_SENSORS_IBM_CFFPS=n
CONFIG_SENSORS_IR35221=n
CONFIG_SENSORS_LM25066=n
CONFIG_SENSORS_LTC2978=n
CONFIG_SENSORS_LTC3815=n
CONFIG_SENSORS_MAX16064=n
CONFIG_SENSORS_MAX20751=n
CONFIG_SENSORS_MAX34440=n
CONFIG_SENSORS_MAX8688=n
CONFIG_SENSORS_TPS40422=n
CONFIG_SENSORS_TPS53679=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9200=n
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=n
EOF

cat << EOF >> target/linux/x86/config-4.19
CONFIG_HSA_AMD=n
EOF

cat << EOF >> target/linux/ramips/mt7621/config-4.14
CONFIG_PMBUS=n
CONFIG_SENSORS_PMBUS=n
CONFIG_SENSORS_ADM1275=n
CONFIG_SENSORS_IBM_CFFPS=n
CONFIG_SENSORS_IR35221=n
CONFIG_SENSORS_LM25066=n
CONFIG_SENSORS_LTC2978=n
CONFIG_SENSORS_LTC3815=n
CONFIG_SENSORS_MAX16064=n
CONFIG_SENSORS_MAX20751=n
CONFIG_SENSORS_MAX34440=n
CONFIG_SENSORS_MAX8688=n
CONFIG_SENSORS_TPS40422=n
CONFIG_SENSORS_TPS53679=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9000=n
CONFIG_SENSORS_UCD9200=n
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=n
CONFIG_DMA_JZ4780=n
EOF
