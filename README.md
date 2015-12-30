# Chug

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-header.png" alt="Chug - cool, refreshing, and no aftertaste" width="750" height="500">

## What is Chug?

Chug is an OS X application that turns your routine installed Homebrew package upgrades and outdated package cleanup into a simple desktop icon double click workflow.

The tool will perform the following actions through Homebrew without the need for a terminal or manual/scripted/aliased command execution on the command line:

- Update the Homebrew formulae
- Examine your system for outdated packages
- Upgrade all outdated packages
- Remove all outdated packages following successful upgrades

## Quickstart

- Clone the Chug Github repository (`git clone https://github.com/chrissimpkins/chug.git`)
- Drag the Chug.app application (repository `build` directory) to a directory on your OS X system
- Double click the Chug icon to execute your Homebrew updates and cleanup
- Prost!

## System Requirements

OS X 10.7 or later and support for 64-bit Intel binaries

The Homebrew executable must be installed on the path `/usr/local/bin/brew` (as [recommended by the Homebrew developers](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/FAQ.md#why-does-homebrew-insist-i-install-to-usrlocal)).

Use the following command to confirm that the Homebrew executable is installed on the correct path:

```
$ which brew
```

If the output from the above command is not `/usr/local/bin/brew`, please see the [Homebrew documentation](http://brew.sh/) for details on how to modify your install path.


## Install

You have the option to install the pre-built application that is released in the repository or customize and build it yourself.  Both approaches require the Chug repository files.

You can clone the Chug repository files on your local system with the command:

```
$ git clone https://github.com/chrissimpkins/chug.git
```

or you can [download the repository ZIP archive file](https://github.com/chrissimpkins/chug/archive/master.zip) and unpack it on your system.

### A. Install the Pre-Built Application

Drag and drop the Chug.app application in the repository `build` directory to a directory on your OS X system. The Desktop is a pretty handy site but you can place it in your Applications directory or anywhere that you darn well please.

<img src="https://raw.githubusercontent.com/chrissimpkins/chug/master/img/chug-install.gif" alt="Chug drag and drop install" width="450">

### B. Build the Application Yourself and Install

Chug can be built with the free, open source tool [Platypus](https://github.com/sveinbjornt/Platypus).  This serves as a GUI application bundler around a [simple shell script](https://github.com/chrissimpkins/chug/blob/master/src/chug.sh) that executes your Homebrew tasks.

First, [download Platypus](https://github.com/sveinbjornt/Platypus/releases) and install it on your OS X system. Launch Platypus.

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

## Issues

If Chug isn't cool, refreshing, with no aftertaste, please [submit a new issue report](https://github.com/chrissimpkins/chug/issues/new) on the Github repository issue tracker.


## License

Chug is licensed under the MIT license.  The full text of the license is [here](https://github.com/chrissimpkins/chug/blob/master/LICENSE).

