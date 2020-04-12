cd ~/derp
rm -rf vendor/aosip
rm -rf frameworks/base
rm -rf packages/apps/Settings
repo sync --force-sync --no-tags --no-clone-bundle -j8
cd vendor/aosip
git fetch https://github.com/amanrajOO7/platform_vendor_aosip
git cherry-pick 7fd2b51a4d881dbced5e9ab90b6a65841926dd9a
cd ~/derp
cd frameworks/base
git fetch https://github.com/amanrajOO7/platform_frameworks_base
git cherry-pick bb32df66319da26f8872b366b2a7a1ebb937fee4
cd ~/derp
cd packages/apps/Settings
git fetch https://github.com/amanrajOO7/platform_packages_apps_Settings
git cherry-pick bb07789260b481486297ba47067b626b673cdfde
cd ~/derp
. build/envsetup.sh
lunch derp_dipper-user
mka installclean
mka kronic
