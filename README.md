Biicode AUR package
===================

Archlinux package for [biicode](https://www.biicode.com/).
AUR package: https://aur.archlinux.org/packages/biicode/

Description
-----------

This package is based on the biicode debian tarball (See the biicode [downloads section](https://www.biicode.com/downloads)). The `PKGBUILD` just extracts the contents of the .deb and installs them.

The repo should not contain files resulting from running `makepkg`.
Such metadata should be removed before pushing changes. 

Status
------

Upgraded to biicode 1.4.1. **NOT WORKING**, python executables issues. See [here](http://unix.stackexchange.com/questions/154072/archlinux-proper-pkgbuild-python-executable-error).
