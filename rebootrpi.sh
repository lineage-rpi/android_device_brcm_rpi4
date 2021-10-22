#!/sbin/sh

# Copyright (C) 2021 KonstaKANG

mount /boot

if [ -f /boot/ramdisk-boot.img ] && [ ! -f /boot/ramdisk-recovery.img ]; then
  mv /boot/ramdisk.img /boot/ramdisk-recovery.img
  mv /boot/ramdisk-boot.img /boot/ramdisk.img
  sed -i 's/^#dtoverlay=vc4-kms-v3d/dtoverlay=vc4-kms-v3d/' /boot/config.txt
  if [ ! -z $(grep -Fx "dtoverlay=edt-ft5406" /boot/config.txt) ]; then
    sed -i 's/^#dtoverlay=vc4-kms-dsi-7inch/dtoverlay=vc4-kms-dsi-7inch/' /boot/config.txt
    sed -i 's/^dtoverlay=edt-ft5406/#dtoverlay=edt-ft5406/' /boot/config.txt
  fi
fi

umount /boot

exit 0
