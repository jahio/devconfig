#!/bin/bash

brew install python3
pip3 install --upgrade pip

export PYTHONUSERBASE="$HOME/.opt/python3"
export INSTALLDIR=$PYTHONUSERBASE
export MYBIN="$HOME/.bin"

echo "Creating user-specific install directory: $INSTALLDIR"

mkdir -p $INSTALLDIR

echo "Creating personal bin/ dir: $MYBIN"

mkdir -p $MYBIN

echo "Installing packages via pip3..."

pip3 install --user psutil setuptools bottle pysnmp zeroconf netifaces influxdb statsd pystache matplotlib pika bernhard py-cpuinfo scandir glances

echo ""
echo ":::::::::::::"
echo ""
echo "Install appears complete; now trying to symlink installed"
echo "application launch scripts into your MYBIN directory..."
echo ""

ln -s $INSTALLDIR/bin/* $MYBIN/

glances --version

echo ""
echo ""
echo ""
echo ""
echo "WARNING: You absolutely MUST set the environment variable"
echo ""
echo "  PYTHONUSERBASE"
echo ""
echo "...in your shell of choice. Its value must be equal to:"
echo "  $PYTHONUSERBASE"
echo ""
echo "For example, in ~/.zshrc:"
echo ""
echo "    export PYTHONUSERBASE=\"$PYTHONUSERBASE\""
echo ""
echo "Example in config.fish:"
echo ""
echo "    set -gx PYTHONUSERBASE \"$PYTHONUSERBASE\""
echo ""
echo ""
echo ""
echo ""

# Unset the above-declared variables now that we're done
unset INSTALLDIR
unset MYBIN
