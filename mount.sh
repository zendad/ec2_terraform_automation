#!/bin/bash

myhosts=$(hostname)

echo '127.0.0.1' $myhosts | sudo tee -a /etc/hosts

sudo apt-get update && sudo apt-get install python -y

while [ ! -e /dev/xvdf ]; do sleep 1; done

fstab_string='/dev/xvdf /data/mongodb ext4 defaults,nofail,nobootwait 0 2'
if grep -q -F -v "$fstab_string" /etc/fstab; then
  echo "$fstab_string" | sudo tee -a /etc/fstab
fi

echo "n
p
1


w" | sudo fdisk /dev/xvdf && sudo mkfs.ext4 /dev/xvdf1

sudo mkdir -p /data/mongodb && sudo mount -t ext4 /dev/xvdf1 /data/mongodb
