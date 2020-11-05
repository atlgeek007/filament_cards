#!/bin/bash

OLD_EXT=.scad
NEW_EXT=.stl

for f in *$OLD_EXT; do
  NEW_FILE=$(echo $f | sed "s/$OLD_EXT/$NEW_EXT/g")

  openscad -o $NEW_FILE $f

done