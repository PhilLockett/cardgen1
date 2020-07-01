#! /bin/sh
#
# 'git' clones files in alphabetical order. This script corrects the timestamps
# so that 'make' doesn't try to rebuild unnecessarily. Run before 'configure':
#
#    ./fix.sh
#    ./configure
#    make
#    make install

touch aclocal.m4
touch Makefile.in
touch configure
touch src/Makefile.in
touch src/config.h.in
