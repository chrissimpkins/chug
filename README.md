# Chug

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-header.png" alt="Chug - cool, refreshing, and no aftertaste" width="750" height="500">

## What is Chug?

<img align="right" src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-quiet-2.gif" alt="Progress bar displays Chug progress" width="350" style="float: right; margin-left: 30px;">

Chug is a macOS application that turns your routine installed [Homebrew](http://brew.sh/) package upgrades and outdated package cleanup into a simple desktop icon click workflow.

The tool will perform the following actions through Homebrew without the need for a terminal or manual/scripted/aliased command execution on the command line:

- Update the Homebrew formulae
- Examine your system for outdated packages
- Upgrade all outdated packages
- Remove all outdated packages following successful upgrades


## Quickstart

- [Download the Chug installer](https://github.com/chrissimpkins/chug/releases/download/v0.10.0/Chug-Installer.dmg)
- Double click the installer icon
- Drag and drop the icon onto the Application directory in the installer window
- Prost!

## System Requirements

macOS 10.7 or later and support for 64-bit Intel binaries

The Homebrew executable must be installed on the path `/usr/local/bin/brew` (as [recommended by the Homebrew developers](https://github.com/Homebrew/brew/blob/master/docs/FAQ.md#why-does-homebrew-prefer-i-install-to-usrlocal)) to use the default Chug build.

Use the following command to confirm that the Homebrew executable is installed on the correct path:

```
$ which brew
```

If the output from the above command is not `/usr/local/bin/brew`, please see the [Homebrew documentation](http://brew.sh/) for details on how to modify your install path in order to use Chug with Homebrew.


## Install

[Download the Chug installer](https://github.com/chrissimpkins/chug/releases/download/v0.10.0/Chug-Installer.dmg), double click on the installer file, and then drag and drop the Chug application icon onto the Applications directory in the installer window.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-install-example.png" alt="Chug drag and drop install" width="539">

You can access Chug via Launchpad and pin the icon to your dock for easy access.

## Usage

Double click that handsome beer label icon to start chugging...

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-click.gif" alt="Chug drag and drop install" width="450">

### Package Updates

By default, your package updates and cleanup are indicated with a progress bar and status update text.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-quiet-2.gif" alt="Progress bar displays Chug progress" width="450">

Click the Details dropdown to view the standard output text from Homebrew as the updates and cleanup take place (or afterwards to review a log of your updates).

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-verbose.gif" alt="Verbose output with the Details dropdown" width="450">

Click the Quit button to close the update progress indicator window and exit Chug.

## Issues

If Chug isn't cool, refreshing, with no aftertaste, please [submit a new issue report](https://github.com/chrissimpkins/chug/issues/new) on the Github repository issue tracker.


## License

Chug is licensed under the MIT license.  The full text of the license is [here](https://github.com/chrissimpkins/chug/blob/master/LICENSE).

