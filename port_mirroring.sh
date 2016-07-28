# Commands to run to start port mirroring on a router
iptables -I PREROUTING -t mangle -j ROUTE --gw 192.168.1.xxx --tee
iptables -I POSTROUTING -t mangle -j ROUTE --gw 192.168.1.xxx --tee

# Remove port mirroring rule
iptables -F -t mangle
