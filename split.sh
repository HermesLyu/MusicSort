#!/bin/bash
[ -e *.flac ] && gnome-terminal -x sh -v ~/.gnome2/nautilus-scripts/flacsplit.sh && exit 0
[ -e *.ape ] && gnome-terminal -x sh -v ~/.gnome2/nautilus-scripts/apesplit.sh && exit 0
gnome-terminal -x echo "ERROR:No music file (flac/ape) found." && exit 0

