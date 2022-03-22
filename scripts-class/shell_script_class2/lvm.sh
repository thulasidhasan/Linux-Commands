#!/bin/bash
[ -b /dev/sdb ] && echo "the block file is /dev/sdb is there" && exit 1
pvs | grep /dev/sdb && echo "the pvs avilable " && exit 1
function app_lvm_create ()
{
pvcreate /dev/sdb
vgcreate appvg
lvcrete -L +4G data_lv appvg
lvcrete -L +1G log_lv appvg
mkfs.ext4 /dev/mapper/appvg/data_lv
mkfs.ext4 /dev/mapper/appvg/log_lv
mkdir -p /apps/data
mkdir -p /apps/logs
cp /etc/fstab{,.bak}
echo "/dev/mapper/appvg/data_lv /apps/data ext4 defaults  0 0" >> /etc/fstab
echo "/dev/mapper/appvg/log_lv /apps/logs ext4 defaults  0 0" >> /etc/fstab
mount /apps/data /apps/logs
}

