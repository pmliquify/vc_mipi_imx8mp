#/bin/bash
#

WORKING_DIR=$(dirname $PWD)
BIN_DIR=$WORKING_DIR/bin

BUILD_DIR=$WORKING_DIR/build

DOWNLOADS_DIR=$BUILD_DIR/downloads
KERNEL_SOURCE=$BUILD_DIR/linux-toradex
MODULES_DIR=$BUILD_DIR/modules

RECOVERY_DIR=$BUILD_DIR/recovery
TEZI_RECOVER_URL=https://artifacts.toradex.com:443/artifactory/tdxref-oe-prod-frankfurt/dunfell-5.x.y/release/7/verdin-imx8mp/tdx-xwayland/tdx-reference-multimedia-image/oedeploy

export CROSS_COMPILE=aarch64-none-linux-gnu-
export PATH=$BUILD_DIR/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu/bin/:$PATH
export DTC_FLAGS="-@"
export ARCH=arm64

TTY=/dev/ttyUSB3