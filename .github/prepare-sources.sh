#!/usr/bin/env bash

mkdir -p .debpkg/etc/systemd/system
mkdir -p .debpkg/usr/local/bin
mkdir -p .debpkg/etc/udev/rules.d
cp powertop.service .debpkg/etc/systemd/system
cp async-start-powertop .debpkg/usr/local/bin
cp async-stop-powertop .debpkg/usr/local/bin
cp power_supply.rules .debpkg/etc/udev/rules.d
