DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cp $DIR/com.area.gamecubeAdapter.plist /Library/LaunchAgents/
chown root /Library/LaunchAgents/com.area.gamecubeAdapter.plist
chgrp wheel /Library/LaunchAgents/com.area.gamecubeAdapter.plist

cp -r $DIR/wiiu-gc-adapter /Applications/

cp -r "$DIR/WiiuGCCAdapter.kext" /Library/Extensions/
chown -R root:wheel /Library/Extensions/WiiuGCCAdapter.kext
touch /Library/Extensions/WiiuGCCAdapter.kext

nvram boot-args=kext-dev-mode=1
