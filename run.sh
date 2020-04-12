cd ~/derp
repo sync --force-sync --no-tags --no-clone-bundle -j8
cd vendor/aosip
git fetch https://github.com/amanrajOO7/platform_vendor_aosip.git
git cherry-pick 302f358d4b873812bfde463e8cb924b77b354a1c
cd ~/derp
cd frameworks/base
git fetch https://github.com/amanrajOO7/platform_frameworks_base.git
git cherry-pick 9cb8a536e81d5495ec5b3c6c56851612388aedd1
cd ~/derp
cd packages/apps/Settings
git fetch https://github.com/amanrajOO7/platform_packages_apps_Settings.git
git cherry-pick bb07789260b481486297ba47067b626b673cdfde
cd ~/derp
. build/envsetup.sh
lunch derp_dipper-user
mka installclean
mka kronic
