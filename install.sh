#!/bin/bash

makepkg --asroot -f -s -i -c
rm -f ./*.pkg.tar.xz ./*.deb
