### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=GS-BluRaviole for Pixel 6 Pro/Pixel 6/Pixel 6a
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=oriole
device.name2=raven
device.name3=bluejay
supported.versions=14
supported.patchlevels=2023-10 -
'; } # end properties

# boot image installation
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;

# vendor_boot installation (for dtb)
block=vendor_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;

# dtbo installation
flash_generic dtbo;