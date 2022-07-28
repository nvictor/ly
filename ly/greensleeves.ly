% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Greensleeves"
  subtitle = "(A minor)"
  composer = ""
  arranger = "carlos peón, victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 6/8
  \tempo "Adagio" 4 = 66
}

right = \relative c'' {
  \global

  % NOTE(victor): right hand - anacrusis, pickup measure

  \partial 8 a8

  % NOTE(victor): right hand - mesures 1 - 4

  c4 d8 e8. f16 e8
  d4 b8 g8. a16 b8
  c4 a8 a8. gis16 a8
  b4 gis8 e4 a8

  \break

  % NOTE(victor): right hand - mesures 5 - 8

  c4 d8 e8. f16 e8
  d4 b8 g8. a16 b8
  c8. b16 a8 gis8. fis16 gis8
  a4 a8 a4.

  \break

  % NOTE(victor): right hand - mesures 9 - 12

  g'4. g8. fis16 e8
  d4 b8 g8. a16 b8
  c4 a8 a8. gis16 a8
  b4 gis8 e4.

  \break

  % NOTE(victor): right hand - mesures 13 - 16

  g'4. g8. fis16 e8
  d4 b8 g8. a16 b8
  c8. b16 a8 gis8.^\markup{\italic rit.} fis16 gis8
  a4 a8 a4.\fermata

  \bar "|."
}

left = \relative c' {
  \global
  
  % NOTE(victor): left hand - anacrusis, pickup measure

  \partial 8 r8

  % NOTE(victor): left hand - mesures 1 - 4

  <a e'>2.
  <g d'>2.
  <a e'>2.
  <e gis b>2.

  \break

  % NOTE(victor): left hand - mesures 5 - 8

  <a e'>2.
  <g d'>2.
  <a e'>4. <e gis b>4.
  <a c e>4. <a c e>4.

  \break

  % NOTE(victor): left hand - mesures 9 - 12

  <c e g>2.
  <g b d>2.
  <a e'>2.
  <e gis b>2.

  \break

  % NOTE(victor): left hand - mesures 9 - 12

  <c' e g>2.
  <g b d>2.
  <a e'>4. <e gis b>4.
  <a c e>4. <a c e>4.\fermata

  \bar "|."
}

\score { 
  \new PianoStaff <<
    \new Staff {
      \right
    }
    \new Staff {
      \clef bass \left 
    }
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}
