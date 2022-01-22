#!/bin/bash

# small
echo 'src-git small https://github.com/kenzok8/small-package' >>feeds.conf.default

# ShadowsocksR Plus
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# PassWall
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# OpenClash
#echo 'src-git OpenClash https://github.com/vernesong/OpenClash' >>feeds.conf.default

# SmartDNS
#git clone https://github.com/pymumu/smartdns.git package/lean/smartdns
#git clone https://github.com/pymumu/luci-app-smartdns -b lede  package/lean/luci-app-smartdns

# edge
#git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git package/lean/luci-theme-edge

# argon
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# UnblockNeteaseMusic
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic package/lean/luci-app-unblockneteasemusic

# vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr