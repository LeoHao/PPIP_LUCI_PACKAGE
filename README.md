PPIP plugins for LuCI (LEDE/OpenWRT)
========================================

PPIP is another custom package from LuCI that tries to bring a better user experience with a better network configuration for LEDE/OpenWRT.
It adds a series of customization features such as user's use of tunnel, networking between users, website peer-to-peer speedup, etc.

Issues & Updates
----------------

Found a bug? Please create an issue on GitHub:
https://github.com/LeoHao/PPIP_LUCI_PACKAGE/issues

Installation
------------

In time, ppip plugins will continue to add new features. But for commercial use only.
for now, please select an installation method
most suited for your case to get it:

### Adding PPIP plugins to your own LEDE/OpenWRT Build

Edit your feeds.conf and add the following to it:

    # luci-app-plugins
    src-git ppip_plugins git://github.com/LeoHao/PPIP_LUCI_PACKAGE

Update your build environment and install the package:

    $ scripts/feeds update ppip_plugins
    $ scripts/feeds install luci-app-plugins
    $ make menuconfig

Go to LuCI -> Applications, select luci-app-pugins, exit, save and build as usual.

License
-------

This program is proprietary software. The copyright belongs to the author.
