mkdir dmg
cp install.sh ./dmg
cp uninstall.sh ./dmg
mkdir ./dmg/wiiu-gc-adapter/
mkdir ./dmg/wiiu-gc-adapter/bin/
mkdir ./dmg/wiiu-gc-adapter/Frameworks/
cp -r ./*.framework ./dmg/wiiu-gc-adapter/Frameworks/
cp -r ./wjoy.kext ./dmg/wiiu-gc-adapter/Frameworks/
cp -r ./WiiuGCCAdapter.kext ./dmg/
cp ./com.area.gamecubeAdapter.plist ./dmg/
cp ./DerivedData/wiiu-gcc-adapter-bin/Build/Products/Debug/wiiu-gcc-adapter-bin ./dmg/wiiu-gc-adapter/bin/
hdiutil create -volname wiiu-gcc-adapter -srcfolder ./dmg -ov -format UDZO wiiu-gcc-adapter.dmg

