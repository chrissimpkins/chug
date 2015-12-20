#!/bin/sh

# chug.sh
# Clickable package management on OS X with Homebrew
# Copyright 2015 Christopher Simpkins
# MIT License

echo "Chugging..."
echo " "

CHUG_BREW_PATH="/usr/local/bin/brew"



# Update Homebrew packages
echo "[+]=== Updating Homebrew packages..."
echo " "

${CHUG_BREW_PATH} update

if (( $? )); then
	echo "ALERT:Chug|There was an error with the Homebrew package updates."
	exit 1
else
	echo "PROGRESS:33"
fi

# Upgrade all installed Homebrew packages
echo " "
echo "[+]=== Looking for outdated Homebrew packages..."
echo " "
${CHUG_BREW_PATH} upgrade --all

if (( $? )); then
	echo "ALERT:Chug|There was an error with the Homebrew package upgrades."
	exit 1
else
	echo "PROGRESS:66"
fi

# Cleanup old Homebrew packages after the install
echo " "
echo "[+]=== Cleaning up outdated Homebrew packages..."
echo " "
${CHUG_BREW_PATH} cleanup

if (( $? )); then
	echo "ALERT:Chug|There was an error with the Homebrew package cleanup following the package upgrades."
	exit 1
else
	echo "PROGRESS:100"
fi

echo " "
echo "Chug complete."
