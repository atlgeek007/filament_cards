#!/bin/bash

OLD_EXT=.scad
NEW_EXT=.stl

for f in `find . -name "*$OLD_EXT"`; do
  NEW_FILE=$(echo $f | sed "s/$OLD_EXT/$NEW_EXT/g")
  echo "Processing $f to $NEW_FILE"
  openscad -o $NEW_FILE $f
  echo "Completed rendering $NEW_FILE"

done
