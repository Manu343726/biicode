#!/bin/bash

mkaurball -f
rm -f ./*.pkg.tar.xz ./*.deb
mv ./*.tar.gz package
