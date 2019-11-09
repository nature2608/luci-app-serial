#!/bin/sh
mac=`uci get series.SN.mac`
uci set network.wan.macaddr=$mac
uci set network.wan_dev.macaddr=$mac
uci commit network
ifconfig eth0 down
ifconfig eth0 hw ether $mac
sleep 1
ifconfig eth0 up
touch /tmp/cacu
chmod 777 /etc/config/series
echo "${mac}"|sed 's/://g' > /tmp/cacu
get_f=`cat /tmp/cacu`
echo -n "${get_f}"|md5sum|cut -b 1-10 > /tmp/cacu
set_ID=`cat /tmp/cacu`
uci set series.SN.ID=$set_ID
uci commit series
echo -n "${set_ID}"|md5sum|cut -b 10-20 > /tmp/cacu
get_key=`cat /tmp/cacu`
key=`uci get series.SN.key`
if [ $key == $get_key ];
then cp /etc/mentohust.lua /usr/lib/lua/luci/controller/mentohust.lua
cp /etc/jmusupplicant.lua /usr/lib/lua/luci/controller/jmusupplicant.lua
fi
/etc/init.d/network reload
