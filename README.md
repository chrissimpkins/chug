# Chug

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-header.png" alt="Chug - cool, refreshing, and no aftertaste" width="750" height="500">

## What is Chug?

<img align="right" src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-quiet-2.gif" alt="Progress bar displays Chug progress" width="350" style="float: right; margin-left: 30px;">

Chug is an OS X application that turns your routine installed [Homebrew](http://brew.sh/) package upgrades and outdated package cleanup into a simple desktop icon click workflow.

The tool will perform the following actions through Homebrew without the need for a terminal or manual/scripted/aliased command execution on the command line:

- Update the Homebrew formulae
- Examine your system for outdated packages
- Upgrade all outdated packages
- Remove all outdated packages following successful upgrades


## Quickstart

- Download the Chug installer ([Click Me](https://github.com/chrissimpkins/chug/releases/download/v0.9.3/Chug-Installer.dmg))
- Double click the installer icon
- Drag and drop the icon to the Application directory in the installer window
- Prost!

## System Requirements

OS X 10.7 or later and support for 64-bit Intel binaries

The Homebrew executable must be installed on the path `/usr/local/bin/brew` (as [recommended by the Homebrew developers](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/FAQ.md#why-does-homebrew-insist-i-install-to-usrlocal)) to use the default Chug build.

Use the following command to confirm that the Homebrew executable is installed on the correct path:

```
$ which brew
```

If the output from the above command is not `/usr/local/bin/brew`, please see the [Homebrew documentation](http://brew.sh/) for details on how to modify your install path, or modify the Chug shell script with your Homebrew executable path and rebuild the application bundle.  See the customization section below for details.


## Install

You have the option to

- a) Install the pre-built OS X application that is released in the Chug repository
- b) Customize and build the OS X application bundle yourself

### A. Install the Pre-Built Application Bundle

[Download the Chug installer](https://github.com/chrissimpkins/chug/releases/download/v0.9.3/Chug-Installer.dmg), double click on the installer file, and then drag and drop the Chug application icon to the Applications directory in the installer window.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-install-example.png" alt="Chug drag and drop install" width="539">

You can access Chug via Launchpad and pin the icon to your dock for easy access.

### B. Build the Application Yourself and Install Application Bundle

You can build Chug yourself with the free, open source tool [Platypus](https://github.com/sveinbjornt/Platypus).  This serves as a GUI application bundler around a [simple shell script](https://github.com/chrissimpkins/chug/blob/master/src/chug.sh) that executes your Homebrew tasks.  If you intend to customize Chug before you build a new version, [additional details are found below](https://github.com/chrissimpkins/chug#customize-chug).  The following instructions are current as of the Platypus v5.1 release.

Obtain the Chug repository files by either cloning the Chug repository files on your local system with git:

```
$ git clone https://github.com/chrissimpkins/chug.git
```

[download the repository ZIP archive file](https://github.com/chrissimpkins/chug/archive/master.zip), then unpack it on your system.

[Download Platypus](http://sveinbjorn.org/platypus) and install it on your OS X system. Launch Platypus.

Then, configure the Platypus profile settings:

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/platypus.png" alt="Platypus settings for Chug builds" width="600">

- **App Name** : `Chug`
- **Script Type** : Shell, `/bin/sh`
- **Script Path** : `[local Chug repository parent directory path]/chug/src/chug.sh`
- **Output** : Progress Bar
- **Platypus Icon** : Icon Selection Button > Select Image File > `[local Chug repository parent directory path]/chug/img/chug@3x.png`
- **Identifier** : com.csimpkins.Chug
- **Author** :  Christopher Simpkins
- **Version** : *set to the appropriate version number* ([changelog](https://github.com/chrissimpkins/chug/blob/master/CHANGELOG.md))
- **Bundled Files** : `[local Chug repository parent directory path]/chug/docs/Credits.html`

Check the `Remain running after initial execution` checkbox and uncheck any others that are checked by default.  Click the `Create` button and build your application in the directory of your choice.

## Usage

Double click that handsome beer label icon to start chugging...

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-click.gif" alt="Chug drag and drop install" width="450">

### Package Updates

By default, your package updates and cleanup are indicated with a progress bar and status update text.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-quiet-2.gif" alt="Progress bar displays Chug progress" width="450">

Click the Details dropdown to view the standard output text from Homebrew as the updates and cleanup take place (or afterwards to review a log of your updates).

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-verbose.gif" alt="Verbose output with the Details dropdown" width="450">

Click the Quit button to close the update progress indicator window and exit Chug.

## Customize Chug

### Customize the Shell Script

Your Homebrew upgrades and cleanup are executed with an extensively annotated [shell script](https://github.com/chrissimpkins/chug/blob/master/src/chug.sh).  Load the shell script on your local Chug repository path `src/chug.sh` in a text editor and modify it so that it meets your needs.  Then follow the build instructions above to bundle a new version of the application.  Pull requests with generally useful changes are highly encouraged!

### Customize the Icon

You can modify the application icon in Platypus.  Click the cogwheel icon below the icon display in the upper left hand corner of the Platypus profile window and select `Select Image File`.  Use the menus to select any image on your system.  It is not necessary to use the .icns format, .png files work just fine.  Use the build instructions above to bundle your application with the new icon.

If you create something shiny and neat, submit it as a pull request and we'll make it available to others who don't like chocolate brown on their desktop :)

### Customize the Standard Output Typeface

Chug uses Monaco 11 as the default standard output typeface (displayed when you click the `Details` button on the interface).  To modify it, click the `Text Settings` button in Platypus, then select the typeface and size that you would like to use.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-text-settings.png" alt="Modify typeface settings in Chug" width="600">

Use the build instructions above to bundle your application with the new typeface settings.

## Issues

If Chug isn't cool, refreshing, with no aftertaste, please [submit a new issue report](https://github.com/chrissimpkins/chug/issues/new) on the Github repository issue tracker.


## License

Chug is licensed under the MIT license.  The full text of the license is [here](https://github.com/chrissimpkins/chug/blob/master/LICENSE).

