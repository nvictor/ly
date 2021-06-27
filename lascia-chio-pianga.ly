% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Lascia Ch‘io Pianga (opening verse)"
  subtitle = "(F major)"
  composer = "G.F. Handel"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/2
  \tempo "Andante"
}

sopranoVoice = \relative c'' {
  \global

  % NOTE(victor): where to place dynamics
  \dynamicUp

  a2\p a2 r4 a4 |
  bes2 bes2 r2 |
  g2 c2 r4 bes4 |
  bes4( a4) a2 r2

  \break

  d2 d2 e4( f8 g8) |
  c,2 c2 r4 f4 |
  a,4( g4 a2) g4( f4) |
  f1.

  \bar "||"

  \break

  r1.\f |
  r1. |
  r1. |
  r1.

  \break

  r1. |
  r1. |
  r1. |
  r1.

  \bar "||"
}

verse = \lyricmode {
  La -- chia ch'io |
  pian -- ga |
  mia cru -- da |
  sor -- te

  \break

  e che so -- |
  spi -- ri la |
  li -- ber -- |
  tà,

  \bar "||"

  \break

  \break

  \bar "||"
}

violinI = \relative c'' {
  \global

  a2\p a2 r4 a4 |
  bes2 bes2 r4 bes4 |
  g2 c2 r4 bes4 |
  bes4( a4) a2 r2

  \break

  d2 d2 e4( f8 g8) |
  c,2 c2 r4 f4 |
  a,4( g4 a2) g4( f4) |
  f1.

  \bar "||"

  a2\f a2 r4 a4 |
  bes2 bes2 r4 bes4 |
  g2 c2. bes4 |
  bes4 a4 a2 r2

  \break

  d2 d2 e4( f8 g8) |
  c,2 c2 r4 f4 |
  a,4 g4 a2 g4 f4 |
  f1.\fermata
  
  \bar "||"
}

violinII = \relative c' {
  \global

  f2\p f2 r4 f4 |
  f2 f2 r4 f4 |
  f2 e2 r4 e4 |
  f2 f2 r2

  \break

  f2 bes2 r4 bes4 |
  g2 a2 r2 |
  f2 f2 e2 |
  f1.

  \bar "||"

  f2\f f2 r4 f4 |
  f2 f2 r4 f4 |
  f2 e2 r4 e4 |
  c2 f2 r2

  \break

  f2 g2 r2 |
  g2 a2 r2 |
  f2 f2 e2 |
  f1.\fermata

  \bar "||"
}

viola = \relative c' {
  \global

  c2\p c2 r4 c4 |
  bes2 bes2 r4 bes4 |
  c2 c2 r4 c4 |
  c2 c2 r2

  \break

  d2 f2 r4 f4 |
  e2 f2 r2 |
  d2 c2 c2 |
  a1.

  \bar "||"

  c2\f c2 r4 c4 |
  bes2 bes2 r4 bes4 |
  c2 c2 r4 c4 |
  c2 c2 r2

  \break

  d2 d2 r2 |
  e2 f2 r2 |
  d2 c2 bes2 |
  a1.\fermata

  \bar "||"
}

contrabass = \relative c {
  \global

  f2\p f2 r4 f4 |
  g2 g2 r4 g4 |
  c,2 c2 r4 c4 |
  f2 f4 e4 d4 c4

  \break

  bes2 bes'2 r4 bes4 |
  bes2 a2 r2 |
  bes2 c2 c,2 |
  f1.

  \bar "||"

  f2\f f2 r4 f4 |
  g2 g2 r4 g4 |
  c,2 c2 r4 c4 |
  f2 f4 e4 d4 c4

  \break

  bes2 bes'2 r2 |
  bes2 a2 r2 |
  bes2 c2 c,2 |
  f1.\fermata

  \bar "||"
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "flute"
} { \sopranoVoice }
\addlyrics { \verse }

violinIPart = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
} \violinII

violaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} { \clef alto \viola }

contrabassPart = \new Staff \with {
  instrumentName = "Contrabass"
  midiInstrument = "contrabass"
} { \clef bass \contrabass }

\score {
  <<
    \sopranoVoicePart
    \new StaffGroup <<
      \violinIPart
      \violinIIPart
      \violaPart
      \contrabassPart
    >>
  >>

  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  %\midi { }
}
