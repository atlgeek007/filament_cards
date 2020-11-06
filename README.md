# Filament Card Generator

So I took the Filament Sample Card from https://www.thingiverse.com/thing:2997350 and wrote a script to generate .scad files based on entries in a CSV.

I also wrote a crappy bash script to process them on the CLI with OpenSCAD to drop STLs, but that's still a work in progress.

# Usage

```./generator.rb```

This will read ```filaments.csv``` and dump out a directory structure like BRAND/MATERIAL/BRAND_COLOR.scad

then you run ```process.sh``` which will iterate through all the .scad files and put STLs.

Then you slice and print as normal.  Each card takes ~40minutes at 0.15mm layer heights on my MK3S.
