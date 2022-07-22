#!/usr/bin/env zsh

# NOTE(victor): Cleanup before committing to GitHub

echo "Moving PDFs files..."
mv ly/*.pdf pdf

echo "Removing MIDI files... TODO: Maybe start uploading them"
rm ly/*.midi
