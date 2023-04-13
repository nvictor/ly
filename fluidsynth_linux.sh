#!/usr/bin/env zsh

# NOTE(victor): Install FluidSynth with: apt install fluidsynth
# See: https://github.com/FluidSynth/fluidsynth/wiki/ExampleCommandLines
# Soundfont files from: http://www.schristiancollins.com/generaluser.php

if [ ! -f ./soundfont.sf2 ]; then
    echo "No soundfont found; download them from http://www.schristiancollins.com/generaluser.php"
    exit 1
fi

# NOTE: Adjust the -g parameter (gain) to control the volume
fluidsynth -a pulseaudio -m alsa_seq -o midi.autoconnect=1 -g 1.0 soundfont.sf2
