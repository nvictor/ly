% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Sadness and Sorrow (Naturo Soundtrack)"
  subtitle = "(E minor)"
  composer = "Toshio Masuda"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

flute = \relative c'' {
  \key e \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4 = 60

  \appoggiatura { fis4 e4 } b2._\markup{(Used an appogiatura with 16th notes here the MIDI playback was too fast)} e8( g8)
  a4 e2.

  g2 fis8( g8 a8 d,8)
  b'2 a2

  \break

  \appoggiatura { fis4 e4 } b2. e8( g8)
  a4 e2.

  g2 fis8( g8 a8 d,8)
  e1

  \bar "|."
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Flute"
      midiInstrument = "flute"
    } \flute
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}
