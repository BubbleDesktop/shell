#! /usr/bin/env bash
$XGETTEXT `find . -name \*.qml` -L Java -o $podir/plasma_shell_io.github.bubbledesktop.bubbleshell.pot
rm -f rc.cpp
