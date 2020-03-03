SSID="$1"
if [ "$1" == "" ] ; then
    echo "Usage $0 <SSID>"
    exit 1
fi
pwgen -s 63 > "$1.txt"
qrencode -o "$1.png" "WIFI:T:WPA;S:${SSID};P:$(cat $1.txt);;"

