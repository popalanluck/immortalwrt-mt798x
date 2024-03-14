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
