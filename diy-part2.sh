#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
#取消bootstrap默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#修改机器名称
#sed -i 's/OpenWrt/OpenWrt-x64/g' package/base-files/files/bin/config_generate
#修改磁盘大小为32128K
#sed -i 's/15744k/32128k/g' target/linux/ramips/image/mt7621.mk
#修改名字为32M
#sed -i 's/"Phicomm K2P";/"Phicomm K2P (32M)";/g' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#超频至1000HZ
#sed -i 's/<80000000>/<10000000>/g' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#防止软重启失败
#sed -i 's/m25p,fast-read;/broken-flash-reset;/g' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#修改为32M
#sed -i 's/<0xa0000 0xf60000>/<0xa0000 0x1f60000>/g' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i '/spi-max-frequency/a\\t\tbroken-flash-reset;' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/<0xa0000 0xf60000>/<0xa0000 0x1fb0000>/g' target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/15744k/32448k/g' target/linux/ramips/image/mt7621.mk