#How to use

If downloading from source, then you will need Xcode to build. Open
the project up, and compile it (i.e. click the play button in the
top right hand corner).

Then run `./makedmg.sh`. This will create a folder called `dmg`, as well
as a dmg, which you can ignore. Open the folder titled `dmg`, and run
`install.sh` as root. Restart your computer, and plug in your
Wii U adapter!

#Uninstallation

Running `uninstall.sh` as root and rebooting will revert your Mac to its previous
state.

# What does it install?

This installs three components.

##A launchagent
This is installed to `/Library/LaunchAgents/com.area.gamecubeAdapter.plist`. This causes the userspace driver to start every time the adapter is plugged it. The userspace driver exits when the adapter is unplugged.

##The userspace driver
The userspace driver and its supporting frameworks are installed to `/Applications/wiiu-gcc-adapter`. This is the program that actually interprets the data received by the adapter and maps it onto fake HID controllers.

##The kext
This is an unsigned Kext that prevents the kernel from grabbing the USB adapter, which means we are able to access it from userspace.

Note that the install script also sets `nvram boot-args=kext-dev-mode=1`, which allows this unsigned kext to be installed and loaded. This will allow *all* unsigned kexts to be loaded on your system. I have joined the Apple Developer's Program so that hopefully I will be able to sign this Kext in the future and remove this limitation.

If you wish to contribute to that membership, or otherwise show support for this driver, you can make a bitcoin payment to `1J7Xxv4Er2mnatbGXZpLtV4JJqq6UdS6tG`.
