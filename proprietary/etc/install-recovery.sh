#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p18:6304000:d619bf810ecded8ef84cff5089a4b0ddb9be41cd; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p7:5599488:52180a3c36baf809746c6065bc8f0868d31dfe94 EMMC:/dev/block/mmcblk0p18 d619bf810ecded8ef84cff5089a4b0ddb9be41cd 6304000 52180a3c36baf809746c6065bc8f0868d31dfe94:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
