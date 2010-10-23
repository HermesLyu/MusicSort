#!/bin/bash
ls *.cue | while read filename
do
      directory=${filename/.cue/}
      mkdir "$directory"
      mv "$directory".* "$directory"/
done
