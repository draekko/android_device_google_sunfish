#!/system/bin/sh

fastboot=$(getprop ro.boot.bootreason | cut -d, -F2)
if [[ $fastboot == "bootloader" || $fastboot == "longkey" || $fastboot == "reboot"  || $fastboot == "recovery" ]]
then
	insmod /system/lib64/ftm5.ko
	insmod /system/lib64/sec_touch.ko
fi

