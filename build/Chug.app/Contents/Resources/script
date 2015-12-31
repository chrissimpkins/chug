#!/bin/sh

# //////////////////////////////////////////////////////////////////
# chug.sh
# Simple, clickable Homebrew package management for OS X
# Copyright 2015 Christopher Simpkins
# MIT License
# //////////////////////////////////////////////////////////////////

echo "Chugging..."

####################################################################
# The default Homebrew executable path.
# - Modify this path if you installed Homebrew in a different
#   location
# - Test for your Homebrew executable path with `which brew`
####################################################################
CHUG_BREW_PATH="/usr/local/bin/brew"


####################################################################
# Test for correct Homebrew executable path
# - increments progress bar to 25% via Platypus echo syntax
# - provides alert if test failed via Platypus echo syntax
# - exits with exit status code 1 for failures
####################################################################

# test for file on the expected Homebrew executable path
if [ -f "$CHUG_BREW_PATH" ]; then
	# increment progress bar using Platypus echo syntax
	echo "PROGRESS:25"
else
	# alert for failures using Platypus echo syntax
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew path.  Please see the log under the Details dropdown for additional information."
	echo "[X] ERROR: Chug was unable to identify the Homebrew executable 'brew' on the path '/usr/local/bin/brew'.  This is a requirement for execution."
	echo " "
	echo "Please review the Homebrew documentation (http://brew.sh/) for additional details about how to install the brew executable on the recommended path."
	exit 1
fi

#####################################################################
# Update Homebrew packages
# - updates status
# - calls Homebrew executable with command `brew update`
# - checks exit status code and either alerts for failure or
#   increments progress bar for success
# - exits with exit status code 1 for failures
#####################################################################
echo " "
echo "[1] Updating Homebrew packages..."

# call Homebrew executable
${CHUG_BREW_PATH} update

# test exit status code
if (( $? )); then
	# alert for failures using Platypus echo syntax
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package updates. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar with Platypus echo syntax
	echo "PROGRESS:50"
fi

#####################################################################
# Upgrade all installed Homebrew packages to current releases
# - calls Homebrew executable with command `brew upgrade --all`
# - checks exit status code and either alerts for failure or
#   increments progress bar for success
#####################################################################

echo " "
echo "[2] Looking for outdated Homebrew packages..."

# call Homebrew executable
${CHUG_BREW_PATH} upgrade --all

# test exit status code
if (( $? )); then
	# alert for failures using Platypus echo syntax
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package upgrades. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar with Platypus echo syntax
	echo "PROGRESS:75"
fi

####################################################################
# Cleanup outdated Homebrew packages after the upgrades
# - calls Homebrew executable with command `brew cleanup`
# - checks exit status code and either alerts for failure or
#   increments progress bar to completion (100%) for success
# - exits with exit status code 1 for failures
####################################################################

echo " "
echo "[3] Cleaning up outdated Homebrew packages..."

# call Homebrew executable
${CHUG_BREW_PATH} cleanup

# test exit status code
if (( $? )); then
	# alert for failures using Platypus echo syntax
	echo " "
	echo "ALERT:Chug|There was an error with the Homebrew package cleanup following the package upgrades. Please see the log under the Details dropdown for additional information."
	exit 1
else
	# increment progress bar to completion using Platypus echo syntax
	echo "PROGRESS:100"
fi

# Final standard output messages to indicate completion of the expected tasks
echo " "
echo "Chug complete."
