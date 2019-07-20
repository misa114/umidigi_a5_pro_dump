#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:16835488:aa453a99eff563b83dbbbab5dd75ec4df6bdb88d; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9065376:3b3f05bd29b5c0fea9d90872cf66cb172cf07006 EMMC:/dev/block/platform/bootdevice/by-name/recovery aa453a99eff563b83dbbbab5dd75ec4df6bdb88d 16835488 3b3f05bd29b5c0fea9d90872cf66cb172cf07006:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
