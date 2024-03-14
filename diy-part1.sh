git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/custom/smartdns
git clone https://github.com/pymumu/luci-app-smartdns -b master feeds/packages/custom/luci-app-smartdns
git clone https://github.com/xiaorouji/openwrt-passwall -b main feeds/packagescustom/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages -b main feeds/packages/custom/openwrt-passwall
git clone https://github.com/tty228/luci-app-wechatpush -b master feeds/packages/custom/luci-app-wechatpush
git clone https://github.com/hubbylei/openssl feeds/packagescustom/openssl
git clone https://github.com/hubbylei/wrtbwmon -b master feeds/packages/custom/wrtbwmon
git clone https://github.com/coolsnowwolf/packages -b master feeds/packages/tmp/packages
./scripts/feeds update -a
./scripts/feeds install -a
git clone https://github.com/Ausaci/luci-app-nat6-helper feeds/packages/luci-app-nat6-helper
git clone https://github.com/brvphoenix/wrtbwmon feeds/packages/wrtbwmon
git clone https://github.com/brvphoenix/luci-app-wrtbwmon feeds/packages/luci-app-wrtbwmon
echo >> feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
./scripts/feeds update istore
./scripts/feeds install -d y -p istore luci-app-store
./scripts/feeds update -a
./scripts/feeds install -a
