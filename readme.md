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

