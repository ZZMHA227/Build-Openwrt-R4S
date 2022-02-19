#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add openclash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash feeds.conf.default

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon feeds.conf.default
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config feeds.conf.default
rm -rf ./feeds/luci/themes/luci-theme-argon

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git feeds.conf.default
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr feeds.conf.default

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan feeds.conf.default

# Add subconverter
git clone --depth=1 https://github.com/tindy2013/openwrt-subconverter feeds.conf.default
