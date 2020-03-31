proxychains repo sync --force-sync --no-tags --no-clone-bundle
rm -rf device/xiaomi/dipper
rm -rf device/xiaomi/sdm845-common
rm -rf vendor/xiaomi/sdm845-common
rm -rf vendor/xiaomi/dipper
rm -rf kernel/xiaomi/dipper
rm -rf vendor/xiaomi/dipper-firmware
proxychains git clone https://github.com/DerpFest-Devices/device_xiaomi_dipper.git -b ten --depth=1 device/xiaomi/dipper
proxychains git clone https://github.com/DerpFest-Devices/device_xiaomi_sdm845-common.git -b ten --depth=1 device/xiaomi/sdm845-common
proxychains git clone https://github.com/DerpFest-Devices/vendor_xiaomi_sdm845-common.git -b ten --depth=1 vendor/xiaomi/sdm845-common
proxychains git clone https://github.com/DerpFest-Devices/vendor_xiaomi_dipper.git -b ten --depth=1 vendor/xiaomi/dipper
proxychains git clone https://github.com/LineageOS/android_kernel_xiaomi_sdm845.git -b lineage-17.1 --depth=1 kernel/xiaomi/dipper
proxychains git clone https://gitlab.com/ALKALiKong/vendor_xiaomi_dipper-firmware.git -b master --depth=1 vendor/xiaomi/dipper-firmware
. build/envsetup.sh
lunch derp_dipper-userdebug
mka installclean
mka kronic
