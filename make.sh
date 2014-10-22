#!/bin/bash

mkaurball -f
rm -f ./*.pkg.tar.xz ./*.deb ./*.install
mv ./*.tar.gz package
