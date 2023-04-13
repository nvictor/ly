#!/usr/bin/env zsh

# NOTE(victor): Install FluidSynth with: brew install fluid-synth
# See: https://github.com/FluidSynth/fluidsynth/wiki/ExampleCommandLines
# Soundfont files from: http://www.schristiancollins.com/generaluser.php

if [ ! -f ./soundfont.sf2 ]; then
    echo "No soundfont found; download them from http://www.schristiancollins.com/generaluser.php"
    exit 1
fi

fluidsynth -a coreaudio -m coremidi ./soundfont.sf2
