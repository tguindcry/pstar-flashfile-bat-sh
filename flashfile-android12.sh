#!/bin/bash
fastboot --set-active=a
fastboot getvar max-sparse-size
fastboot oem fb_mode_set
fastboot flash partition gpt.bin
fastboot flash bootloader bootloader.img
fastboot reboot bootloader
fastboot flash vbmeta vbmeta.img
fastboot flash vbmeta_system vbmeta_system.img
fastboot flash modem NON-HLOS.bin
fastboot erase mdmddr
fastboot flash fsg fsg.mbn
fastboot erase mdm1m9kefs1
fastboot erase mdm1m9kefs2
fastboot flash bluetooth BTFM.bin
fastboot flash dsp dspso.bin
fastboot flash logo logo.bin
fastboot flash boot boot.img
fastboot flash vendor_boot vendor_boot.img
fastboot flash dtbo dtbo.img
fastboot flash super super.img_sparsechunk.0
fastboot flash super super.img_sparsechunk.1
fastboot flash super super.img_sparsechunk.2
fastboot flash super super.img_sparsechunk.3
fastboot flash super super.img_sparsechunk.4
fastboot flash super super.img_sparsechunk.5
fastboot flash super super.img_sparsechunk.6
fastboot flash super super.img_sparsechunk.7
fastboot flash super super.img_sparsechunk.8
fastboot flash super super.img_sparsechunk.9
fastboot flash super super.img_sparsechunk.10
fastboot flash super super.img_sparsechunk.11
fastboot erase carrier
fastboot erase userdata
fastboot erase metadata
fastboot erase ddr
fastboot oem fb_mode_clear
fastboot reboot
read -p "Done!"
