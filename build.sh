#!/bin/bash

git submodule update --init --recursive

cd mupdf
export PATH=$PATH:/home/build/inkbox/compiled-binaries/arm-kobo-linux-gnueabihf/bin/

CHOST=arm CC=arm-kobo-linux-gnueabihf-gcc \
AR=arm-kobo-linux-gnueabihf-ar \
RANLIB=arm-kobo-linux-gnueabihf-ranlib \
CXX=arm-kobo-linux-gnueabihf-g++ \
LINK=arm-kobo-linux-gnueabihf-g++ \
LD=arm-kobo-linux-gnueabihf-ld \
ARCH=arm CROSS_COMPILE=arm-kobo-linux-gnueabihf- make -j 8 HAVE_X11=no HAVE_GLUT=no

echo "Enjoy some fresh mupdf at mupdf/build/release"
