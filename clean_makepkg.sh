#!/bin/bash

find . -type d  -type f              \ 
       -not -name 'PKGBUILD'         \
       -not -name 'README.md'        \
       -not -name '.AURINFO'         \
       -not -name 'clean_makepkg.sh' \
       -delete 
