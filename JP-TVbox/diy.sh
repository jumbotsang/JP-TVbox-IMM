#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# Add packages
git clone --depth=1 https://github.com/nikkinikki-org/OpenWrt-nikki package/luci-app-nikki

# Add luci-app-amlogic
rm -rf package/luci-app-amlogic
git clone -b main https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

# Clean packagesrm -rf clone
