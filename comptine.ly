% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Comptine d'un autre été"
  subtitle = "(E minor)"
  composer = "Yann Tiersen"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key e \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4 = 96
}

chordnames = \chordmode {
  \global
}
  
right = \relative c'' {
  \global
  
  % NOTE(victor): right hand - mesures 1 - 4

  r1 |
  r1 |
  r1 |
  r1

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 5 - 8

  \repeat volta 2 {
    r8 g16 fis16 g8[ b16 c16] b2 |
    r8 fis16 g16 fis8[ g16 a16] g2 |
    r8 fis16 e16 fis8[ b16 c16] b2 |
    r8 fis16 e16 fis2.
  }

  \break

  % NOTE(victor): right hand - mesures 9 - 12

  e'4. b8~b2 |
  d4. b8~b2 |
  fis'4. b,8~b2 |
  fis'4. a,8~a2

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 13 - 16 

  <b g'>4. <g e'>8~<g e'>2 |
  <b g'>4. <g d'>8~<g d'>2 |
  <b fis'>4. <fis d'>8~<fis d'>2 |
  <a fis'>4. <fis d'>8~<fis d'>2
  
  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 17 - 20 

  b16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 c16 e16 |
  b16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 a16 d16 |  
  fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 g16 b16 |
  a16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 g,16 d'16

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 21 - 24

  b16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 c16 e16 |
  b16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 a16 d16 |  
  fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 g16 b16 |
  a16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'8

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 25 - 28

  \repeat volta 2 {
    r8 g16 fis16 g8[ b16 c16] b2 |
    r8 fis16 g16 fis8[ g16 a16] g2 |
    r8 fis16 e16 fis8[ b16 c16] b2 |
    r8 fis16 e16 fis2.
  }

  \break

  % NOTE(victor): right hand - mesures 29 - 32

  e'4. b8~b2 |
  d4. b8~b2 |
  fis'4. b,8~b2 |
  fis'4. a,8~a2

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 33 - 36

  <b g'>4. <g e'>8~<g e'>2 |
  <b g'>4. <g d'>8~<g d'>2 |
  <b fis'>4. <fis d'>8~<fis d'>2 |
  <a fis'>4. <fis d'>8~<fis d'>2

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 37 - 40

  b16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 c16 e16 |
  b16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 a16 d16 |  
  fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 g16 b16 |
  a16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 g,16 d'16

  \bar "||"

  \break

  % NOTE(victor): right hand - mesures 41 - 45

  b16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 b'16 b,16 e16 c16 e16 |
  b16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 b'16 b,16 d16 a16 d16 |  
  fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 fis'16 fis,16 b16 g16 b16 |
  a16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 a,16 d16 a'16 g16 |
  <g, b e>1
  
  \bar "|."
}

left = \relative c {
  \global

  % NOTE(victor): left hand - mesures 1 - 4

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \break

  % NOTE(victor): left hand - mesures 5 - 8
 
  \repeat volta 2 {
    <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
    <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
    <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
    <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8
  }

  \break

  % NOTE(victor): left hand - mesures 9 - 12

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 13 - 16

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 17 - 20

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 21 - 24

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 25 - 28

  \repeat volta 2 {
    <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
    <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
    <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
    <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8
  }

  \break

  % NOTE(victor): left hand - mesures 29 - 32

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 33 - 36

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 37 - 40

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>8 a8

  \bar "||"

  \break

  % NOTE(victor): left hand - mesures 41 - 45

  <e e'>8 b'8 <g e'>8 b8 <e, e'>8 b'8 <g e'>8 b8 |
  <d, d'>8 b'8 <g d'>8 b8 <d, d'>8 b'8 <g d'>8 b8 |
  <d, d'>8 b'8 <fis d'>8 b8 <d, d'>8 b'8 <fis d'>8 b8 |
  <d, d'>8 a'8 <fis d'>8 a8 <d, d'>8 a'8 <fis d'>4 |
  <e b' e>1

  \bar "|."
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" } <<
    \new ChordNames { 
     \chordnames 
    }
    \new Staff = "right" {
      \right
    }
    \new Staff = "left" {
      \clef bass \left 
    }
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  %\midi { }
}