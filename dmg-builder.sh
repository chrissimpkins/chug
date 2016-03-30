#!/bin/sh

/Users/ces/Desktop/extcode/create-dmg/create-dmg \
--volname "Chug Installer" \
--volicon "/Users/ces/Library/Application Support/Platypus/PlatypusIcon-2369378.icns" \
--background "img/dmg-installer-bg.png" \
--window-pos 200 120 \
--window-size 800 400 \
--icon-size 100 \
--icon Chug.app 200 190 \
--hide-extension Chug.app \
--app-drop-link 600 185 \
installer/Chug-Installer.dmg \
/Users/ces/Desktop/code/chug/build
