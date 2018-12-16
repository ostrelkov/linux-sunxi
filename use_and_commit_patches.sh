#!/bin/bash

# Started patching process for kernel sun7i-default

for file in *.patch ; do
    [ -e "$file" ] || continue
    # /* it was debug
    # echo $file
    # echo "Applied patch: 'sun7i-default/$file' from armbian kernel for 'olimex-som204-a20' board"
    # cat $file > $file.c
    # echo $file >> one_file.c
    # */
    

    patch -p1 -f < $file
    git add . && \
    git add -u && \
    git commit -m "Applied patch: 'sun7i-default/$file'" -m "from armbian kernel for 'olimex-som204-a20' board"
done

# patch -p1 -f < patches/0001-arm-sunxi-disp-Fix-division-by-zero.patch 
# patch -p1 -f < patches/0001-arm-sunxi-disp-Fix-typo-in-get_src_window.patch 
# patch -p1 -f < patches/0001-hid-Add-new-driver-for-non-compliant-Xin-Mo-devices.patch 
# patch -p1 -f < patches/0002-arm-sunxi-g2d-Fix-handle-noop-blits.patch 
# patch -p1 -f < patches/0002-arm-sunxi-ir-Enable-IR-autorepeat.patch 
# patch -p1 -f < patches/0003-arm-sunxi-disp-Fix-csc-calculations.patch 
# patch -p1 -f < patches/0004-ax88179_178a-USB-3.0-Ethernet.patch 
# patch -p1 -f < patches/0008-Fix-zram-and-zcache-to-compile-on-non-x86-architectu.patch 
# patch -p1 -f < patches/0009-Added-new-backend-based-on-CMA-for-the-Mali-UMP-memo.patch 
# patch -p1 -f < patches/0010-patch-3.4.104-105.patch 
# patch -p1 -f < patches/0011-patch-3.4.105-106.patch 
# patch -p1 -f < patches/0012-Add-rc-core-driver-for-A20-in-tree.patch 
# patch -p1 -f < patches/0012-patch-3.4.106-107.patch 
# patch -p1 -f < patches/0013-patch-3.4.107-108.patch 
# patch -p1 -f < patches/0014-modified-pwm-sunxi.h.patch 
# patch -p1 -f < patches/0015-linux-sunxi-3.4.108-overlayfs.patch 
# patch -p1 -f < patches/0015-rewrite-function-bestprescale.patch 
# patch -p1 -f < patches/0016-patch-3.4.108-109.patch 
# patch -p1 -f < patches/0017-patch-3.4.109-110.patch 
# patch -p1 -f < patches/0018-patch-3.4.110-111.patch 
# patch -p1 -f < patches/0018-patch-3.4.111-112.patch 
# patch -p1 -f < patches/0018-patch-3.4.112-113.patch 
# patch -p1 -f < patches/0020-clustering-patch-3.4-ja1.patch 
# patch -p1 -f < patches/0020-dev-bananapi-r1.patch 
# patch -p1 -f < patches/0021-IDE-led-trigger-to-generic-disk-activity.patch 
# patch -p1 -f < patches/0022-a20-temp.patch 
# patch -p1 -f < patches/0024-dev-chip-id-and-gmac-fixing-mac.patch 
# patch -p1 -f < patches/0025-gpio.patch 
# patch -p1 -f < patches/0026-rt8192cu-missing-case.patch 
# patch -p1 -f < patches/0027-banana_touch_screen.patch 
# patch -p1 -f < patches/0028-nikkov-i2s-spdif-2.0.patch 
# patch -p1 -f < patches/0029-HDMI-8ch-and-alsa-fix-2.0.patch 
# patch -p1 -f < patches/0029-dev-spi-sun7i.patch 
# patch -p1 -f < patches/0030-ap6210_module-cubietruck.patch 
# patch -p1 -f < patches/0031-ap6211_module-bananapro.patch 
# patch -p1 -f < patches/0050-lircgpio_and_raw.patch 
# patch -p1 -f < patches/0061-w1-fix.patch 
# patch -p1 -f < patches/1017-SPDIF-experiments.patch 
# patch -p1 -f < patches/1018-Some-magic.patch 
# patch -p1 -f < patches/add-w25q128-spi-nor.patch 
# patch -p1 -f < patches/bash_to_afterinstall.patch 
# patch -p1 -f < patches/cedar-remove-insecure-code.patch 
# patch -p1 -f < patches/enable_emmc5_support.patch 
# patch -p1 -f < patches/enable_watchdog_a20.patch 
# patch -p1 -f < patches/fbtft_for_older.patch 
# patch -p1 -f < patches/fix-gcc5.patch 
# patch -p1 -f < patches/fix_emmc_hpi.patch 
# patch -p1 -f < patches/olinuxino-lcd.patch 
# patch -p1 -f < patches/packaging-3.4.x-DEFAULT-with-postinstall-scripts.patch 
# patch -p1 -f < patches/rtl2832.patch 
# patch -p1 -f < patches/sunxi-can.patch 
# patch -p1 -f < patches/tbs5520.patch 
