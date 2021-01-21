#!/bin/bash

sed '/^iface ens33/d' /etc/network/interfaces

echo "iface ens33 inet static" >> /etc/network/interfaces
echo "address $VM_HOST" >> /etc/network/interfaces
echo "gateway $VM_GATEWAY" >> /etc/network/interfaces
echo "netmask 255.255.255.0" >> /etc/network/interfaces

mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys
chmod 700 /root/.ssh && chmod 600 /root/.ssh/authorized_keys
chown -R root /root/.ssh
echo $SSH_KEY >> /root/.ssh/authorized_keys
