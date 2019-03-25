#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33895758:fb074413b961bacea5e6fc64c0392c8406d49069; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27735370:3b53ba59148c2baf209cffcac8a3927011cc0d40 EMMC:/dev/block/bootdevice/by-name/recovery fb074413b961bacea5e6fc64c0392c8406d49069 33895758 3b53ba59148c2baf209cffcac8a3927011cc0d40:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
