DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

rm /Library/LaunchAgents/com.area.gamecubeAdapter.plist

rm  -rf /Applications/wiiu-gc-adapter

rm -rf /Library/Extensions/WiiuGCCAdapter.kext

nvram boot-args=kext-dev-mode=0
