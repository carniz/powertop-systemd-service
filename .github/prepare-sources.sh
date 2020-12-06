#!/usr/bin/env bash

export VERSION=${1:-'0.0.0'}
BUILD_DIR=${2:-"powertop-systemd-service-${VERSION}"}

mkdir -p ${BUILD_DIR}/etc/systemd/system
mkdir -p ${BUILD_DIR}/usr/local/bin
mkdir -p ${BUILD_DIR}/etc/udev/rules.d
cp powertop.service ${BUILD_DIR}/etc/systemd/system
cp async-restart-powertop ${BUILD_DIR}/usr/local/bin
cp async-stop-powertop ${BUILD_DIR}/usr/local/bin
cp power_supply.rules ${BUILD_DIR}/etc/udev/rules.d
mkdir ${BUILD_DIR}/DEBIAN
cat debian/control.template | envsubst > ${BUILD_DIR}/DEBIAN/control
cp debian/postinst ${BUILD_DIR}/DEBIAN/postinst
chmod 755 ${BUILD_DIR}/DEBIAN/postinst
