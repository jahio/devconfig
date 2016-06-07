#!/bin/bash

mkdir -p "$HOME/.opt/python3"
brew install python3
pip3 install --upgrade pip
export PYTHONUSERBASE="$HOME/.opt/python3"
pip3 install --user psutil setuptools bottle pysnmp zeroconf netifaces influxdb statsd pystache matplotlib pika bernhard py-cpuinfo scandir glances
