#!/bin/bash

echo "Using devkitPro installer to install devkitPro..."

git clone https://github.com/devkitPro/installer.git
perl ./installer/perl/devkitPPCupdate.pl

echo "Registering DEVKITPPC and DEVKITPRO in vagrant ~/.bashrc"

cp /vagrant/.bashrc ~/.bashrc
source ~/.bashrc

echo "Building Wii examples"

git clone https://github.com/devkitPro/wii-examples.git

cd wii-examples
make


