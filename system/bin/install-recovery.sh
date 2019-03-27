#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33895758:7b904b3876cc85693becc8416e41f64e4db9cee2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27735370:093a1a3f51ff49eac940e5376f3418963b290ebf EMMC:/dev/block/bootdevice/by-name/recovery 7b904b3876cc85693becc8416e41f64e4db9cee2 33895758 093a1a3f51ff49eac940e5376f3418963b290ebf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
