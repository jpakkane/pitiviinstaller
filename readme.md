# Installer + update tool for Pitivi

This repo contains configuration necessary to build Linux installers
for Pitivi. It is implemented using the [Qt Installer
Framework](https://doc.qt.io/qtinstallerframework/index.html).

## Setup

First we need to build a static version of Qt. This document assumes
that you have two subdirectories at the root of your homedir called
`src` and `invariant`.

First check out the build tools:

    cd ~/src
    git clone https://github.com/sailfish-sdk/sdk-build-tools.git

Download and extract the sources:

    cd ~/invariant
    ../src/sdk-build-tools/setup-buildenv.py

Then build the deps (building Qt takes a long time):

    ../src/sdk-build-tools/buildicu.sh
    ../src/sdk-build-tools/buildqt5.sh -s
    ../src/sdk-build-tools/buildifw.sh

Then cd into the directory that contains this file. Put the newest
Pitivi daily build into `packages/org.pitivi.pitivi/data`. Update
version numbers and dates in `config/config.xml` and
`packages/org.pitivi.pitivi/meta/package.xml`.

Update repository url in the package file so it points to the
architecture you are building on (linux-64 or linux-32).

Build the online installer and repository:

    ~/invariant/iwf-build-2.0.1/bin/binarycreator -n -c config/config.xml -p packages PitiviOnlineInstaller.bin
    mkdir linux-64 [or linux-32 for 32 bit builds]
    ~/invariant/ifw-build-2.0.1/bin/repogen -p packages linux-64

Now you are done. Replace the installer binaries and linux-32 and
linux-64 directories on the web server. Now users will see the updates
when they run the maintenance tool.
