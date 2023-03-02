export HOTSPOT_NETWORK_NAME=ap-wlan0
export HOTSPOT_SSID=Orange
export HOTSPOT_PASSWORD=Network123
apt-get install dnsmasq-base network-manager
nmcli c add type wifi ifname wlan0 con-name $HOTSPOT_NETWORK_NAME autoconnect no ssid $HOTSPOT_SSID
nmcli connection modify $HOTSPOT_NETWORK_NAME 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
nmcli connection modify $HOTSPOT_NETWORK_NAME wifi-sec.key-mgmt wpa-psk
nmcli connection modify $HOTSPOT_NETWORK_NAME wifi-sec.psk $HOTSPOT_PASSWORD
nmcli connection modify $HOTSPOT_NETWORK_NAME 802-11-wireless-security.proto wpa
nmcli connection up $HOTSPOT_NETWORK_NAME