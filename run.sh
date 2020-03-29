repo sync --force-sync --no-tags --no-clone-bundle
rm -rf device/xiaomi/dipper
rm -rf device/xiaomi/sdm845-common
rm -rf vendor/xiaomi/sdm845-common
rm -rf vendor/xiaomi/dipper
rm -rf kernel/xiaomi/dipper
rm -rf vendor/xiaomi/dipper-firmware
git clone https://github.com/DerpFest-Devices/device_xiaomi_dipper.git -b ten device/xiaomi/dipper
git clone https://github.com/DerpFest-Devices/device_xiaomi_sdm845-common.git -b ten device/xiaomi/sdm845-common
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_sdm845-common.git -b ten vendor/xiaomi/sdm845-common
git clone https://github.com/DerpFest-Devices/vendor_xiaomi_dipper.git -b ten vendor/xiaomi/dipper
git clone https://github.com/LineageOS/android_kernel_xiaomi_sdm845.git -b lineage-17.1 kernel/xiaomi/dipper
git clone https://gitlab.com/ALKALiKong/vendor_xiaomi_dipper-firmware.git -b master vendor/xiaomi/dipper-firmware
. build/envsetup.sh
lunch derp_dipper-userdebug
mka installclean
mka kronic
