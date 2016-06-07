#!/bin/bash

echo "Attempting to install monit via homebrew..."
brew install monit
touch $HOME/.monitrc
chmod 0600 $HOME/.monitrc

echo ""
echo ""
echo "Creating monit-specific directories..."
mkdir -p $HOME/.opt/monit/log
mkdir -p $HOME/.log

touch $HOME/.opt/monit/log/monit.log
touch $HOME/.opt/monit/log/launchd.stdin.log
touch $HOME/.opt/monit/log/launchd.stderr.log
touch $HOME/.opt/monit/log/launchd.stdout.log

ln -s "$HOME/.opt/monit/log" "$HOME/.log/monit"

echo "monit is now installed but won't launch at login without"
echo "further intervention from you; see monit.plist for an example"
echo "os x launchd property list (eww, xml) for starting monit at login"
echo ""
echo ""
echo ""
echo ""
monit --version
