#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29447502:1bb9a0e3336ebd9b8d0e99c7e7054978ee009c83; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24970570:1ef8dc9bfe20e90e91946f7468bfb745dc6185cd EMMC:/dev/block/bootdevice/by-name/recovery 1bb9a0e3336ebd9b8d0e99c7e7054978ee009c83 29447502 1ef8dc9bfe20e90e91946f7468bfb745dc6185cd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
