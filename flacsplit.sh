#!/bin/bash

ORIG=$(ls *.flac)
shntool split -t "%n.%t" -f *.cue -o flac *.flac
[ -e 00.pregap.flac ] && mv 00.pregap.flac 00.pregap.flac0
mv $ORIG "$ORIG"0
cuetag *.cue *.flac
exit 0
