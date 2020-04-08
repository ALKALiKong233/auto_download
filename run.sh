cd ~/derp
rm -rf vendor/aosip
rm -rf frameworks/base
rm -rf packages/apps/Settings
repo sync --force-sync --no-tags --no-clone-bundle
cd vendor/aosip
git fetch https://github.com/ALKALiKong233/platform_vendor_aosip.git
git cherry-pick 1dc6f4d4c811624a0c01aed2150e1d57ecd42744
cd ~/derp
cd frameworks/base
git fetch https://github.com/PixelExperience/frameworks_base.git
git cherry-pick 6b6d2be4e1166a9828a5b24e84375a493b80068f
cd ~/derp
cd packages/apps/Settings
git fetch https://github.com/PixelExperience/packages_apps_Settings.git
git cherry-pick 1f59d13d3acee291aa5454900df8f014c320a0e9
cd ~/derp
. build/envsetup.sh
lunch derp_dipper-userdebug
mka installclean
mka kronic
