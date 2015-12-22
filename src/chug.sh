#!/bin/sh

# chug.sh
# Double-click Homebrew package management for OS X
# Copyright 2015 Christopher Simpkins
# MIT License

echo "Chugging..."

CHUG_BREW_PATH="/usr/local/bin/brew"

# Test for correct Homebrew executable path
if [ -f "$CHUG_BREW_PATH" ]; then
	# increment progress bar
	echo "PROGRESS:25"
else
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew path.  Please see the log under the Details dropdown for additional information."
	echo "[X] ERROR: Chug was unable to identify the Homebrew executable 'brew' on the path '/usr/local/bin/brew'.  This is a requirement for execution."
	echo " "
	echo "Please review the Homebrew documentation (http://brew.sh/) for additional details about how to install the brew executable on the recommended path."
	exit 1
fi

# Update Homebrew packages
echo " "
echo "[1] Updating Homebrew packages..."

${CHUG_BREW_PATH} update

if (( $? )); then
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package updates. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar
	echo "PROGRESS:50"
fi

# Upgrade all installed Homebrew packages to current releases
echo " "
echo "[2] Looking for outdated Homebrew packages..."

${CHUG_BREW_PATH} upgrade --all

if (( $? )); then
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package upgrades. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar
	echo "PROGRESS:75"
fi

# Cleanup outdated Homebrew packages after the upgrades
echo " "
echo "[3] Cleaning up outdated Homebrew packages..."

${CHUG_BREW_PATH} cleanup

if (( $? )); then
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package cleanup following the package upgrades. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar to completion
	echo "PROGRESS:100"
fi

echo " "
echo "Chug complete."
