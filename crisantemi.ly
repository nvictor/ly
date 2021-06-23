% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Crisantemi"
  subtitle = "(closing phrase)"
  composer = "Giacomo Puccini"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key e \major
  \numericTimeSignature
  \time 3/4
  \tempo "Andante Mesto"
}

violinI = \relative c' {
  \global
  
  e4\f\marcato^sostenuto dis4( dis8) gis8\ff\marcato |
  cis8.\marcato-"con forza"( dis16) e8\marcato[ cis8\marcato] fis8.\marcato( dis16) |
  gis2.\>^rallentando |
  gis,2.\pp |
  r2. |
  r8^tratenuto gis,8\tenuto( a8\tenuto ais8\tenuto) b8\tenuto(\> bis8\tenuto)\! |
  dis4\pp^"senza rallentando"( cis2)( |
  cis2) gis4\tenuto |
  cis2.( |
  cis2) gis4\tenuto |
  cis2( cis8) r8 |
  cis2^rallentando cis4 |
  cis2.\>^perdendosi( |
  cis8)\! r8 r4 r4\fermata
  
  \bar "|."
}

violinII = \relative c' {
  \global

  a2\f\marcato^sostenuto( a8) gis'8\ff\marcato |
  e8.\marcato-"con forza"( gis16) cis8\marcato[ e,8\marcato] dis'8.\marcato( gis,16) |
  e'2.\>^rallentando |
  e,2.\pp |
  r2. |
  r8^tratenuto gis,8\tenuto( a8\tenuto gis8\tenuto) g8\tenuto(\> gis8\tenuto)\! |
  dis'4\pp^"senza rallentando"( cis2)( |
  cis2) gis4\tenuto |
  cis2.( |
  cis2) gis4\tenuto |
  cis2( cis8) r8 |
  gis2^rallentando gis4 |
  gis2.\>^perdendosi( |
  gis8)\! r8 r4 r4\fermata
  
  \bar "|."
}

viola = \relative c {
  \global

  b2\f\marcato^sostenuto( b8) gis'8\ff\marcato |
  cis8.\marcato-"con forza"( dis16) e8\marcato[ cis8\marcato] fis8.\marcato( dis16) |
  gis2.\>^rallentando |
  gis,2.\pp |
  r2. |
  r8^tratenuto bis,8\tenuto( c8\tenuto cisis8\tenuto) cis8\tenuto(\> fis8\tenuto)\! |
  e4\mf^"senza rallentando"( e16) e16\staccato cis16\staccato e16\staccato dis16\staccato fis16\staccato dis16\staccato fis16\staccato |
  e16\staccato gis16\staccato cis8(\> cis4) gis4\! |
  e4( e16) e16\staccato cis16\staccato e16\staccato dis16\staccato fis16\staccato dis16\staccato fis16\staccato |
  e16\staccato gis16\staccato cis16\staccato gis16\staccato e'4\> gis,4\! |
  cis,2\pp( cis8) r8 |
  e2^rallentando e4 |
  e2.\>^perdendosi( |
  e8)\! r8 r4 r4\fermata
  
  \bar "|."
}

cello = \relative c, {
  \global

  fis2\f\marcato^sostenuto( fis8) gis'8\ff\marcato |
  e8.\marcato-"con forza"( gis16) cis8\marcato[ e,8\marcato] dis'8.\marcato( gis,16) |
  e'2.\>^rallentando |
  r2.\! |
  gis,,2.\pp( |
  gis4)^tratenuto fis8\tenuto( eis8\tenuto) e8\tenuto(\> dis8\tenuto)\! |
  cis16\pp\staccato^"senza rallentando" gis'16\staccato cis,16\staccato gis'16\staccato cis,4 gis'4\tenuto |
  cis,16\pp\staccato gis'16\staccato cis,16\staccato gis'16\staccato cis4 gis4\tenuto |
  cis,16\staccato gis'16\staccato cis,16\staccato gis'16\staccato cis,4 gis'4\tenuto |
  cis,16\staccato gis'16\staccato cis,16\staccato gis'16\staccato cis4 gis4\tenuto |
  cis,2\pp( cis8) r8 |
  <cis gis'>2^rallentando <cis gis'>4 |
  <cis gis'>2.\>^perdendosi^(_( |
  <cis gis'>8)\! r8 r4 r4\fermata
  
  \bar "|."
}

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

celloPart = \new Staff \with {
  instrumentName = "Cello"
  midiInstrument = "cello"
} { \clef bass \cello }

\score {
  \new StaffGroup <<
    \violinIPart
    \violinIIPart
    \violaPart
    \celloPart
  >>

  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  %\midi { }
}
