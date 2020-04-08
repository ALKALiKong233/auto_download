cd ~/derp
rm -rf vendor/aosip
rm -rf frameworks/base
rm -rf packages/apps/Settings
proxychains repo sync --force-sync --no-tags --no-clone-bundle
cd vendor/aosip
proxychains git fetch https://github.com/PixelExperience/vendor_aosp.git
git cherry-pick 2428a260dd754c7ec22c031ab2b5c5067bbee721
cd ~/derp
cd frameworks/base
proxychains git fetch https://github.com/PixelExperience/frameworks_base.git
git cherry-pick 6b6d2be4e1166a9828a5b24e84375a493b80068f
cd ~/derp
cd packages/apps/Settings
proxychains git fetch https://github.com/PixelExperience/packages_apps_Settings.git
git cherry-pick 1f59d13d3acee291aa5454900df8f014c320a0e9
cd ~/derp
. build/envsetup.sh
lunch derp_dipper-userdebug
mka installclean
mka kronic
