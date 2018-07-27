#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30831950:af4b952d075a554c60a84174257a06d38d74da72; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26326346:96515a2f8e2637071fcf73d28d763a02351b7c1a EMMC:/dev/block/bootdevice/by-name/recovery af4b952d075a554c60a84174257a06d38d74da72 30831950 96515a2f8e2637071fcf73d28d763a02351b7c1a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
