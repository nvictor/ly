% NOTE(victor): macOS builds are sort of old
\version "2.20.0"

\header {
  title = "Tetris"
  composer = ""
  arranger = "victor noagbodji & flowkey"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Presto" 4 = 120
}

chordnames = \chordmode {
  \global

  % NOTE(victor): it is ridiculous from a parsing perspective that
  % the chordmode block would also need the \repeat command
  \repeat volta 2 {
    e1 |
    a1:m |
    e2/gis e2 |
    a1:m
  
    \break
  
    d1:m |
    c1 |
    e2/b e2 |
    a1:m
  }

  a1:m |
  e1/gis |
  a1: m |
  e1/gis

  \break

  a1:m |
  e1/gis |
  a1:m |
  e1/gis

  \bar "||"

  e1 |
  a1:m |
  e2/gis e2 |
  a1:m

  \break

  d1:m |
  c1 |
  e2/b e2 |
  a1:m

  \bar "|."
}

right = \relative c'' {
  \global
  
  \repeat volta 2 {
    <b e>4 <gis b>8[ <a c>8] <b d>4 <a c>8[ <gis b>8] |
    <e a>4 <e a>8[ <a c>8] <c e>4 <b d>8[ <a c>8] |
    <gis b>4. <a c>8 <b d>4 <c e>4 |
    <a c>4 <e a>4 <e a>2

    \break

    r8 <f d'>4 <a f'>8 <c a'>4 <b g'>8[ <a f'>8] |
    <g e'>4. <e c'>8 <g e'>4 <f d'>8[ <e c'>8] |
    <gis b>4. <a c>8 <b d>4 <c e>4 |
    <a c>4 <e a>4 <e a>2
  }

  <c e>2 <a c>2 |
  <b d>2 <gis b>2 |
  <a c>2 <e a>2 |
  <e gis>2 <gis b>2

  \break

  <c e>2 <a c>2 |
  <b d>2 <gis b>2 |
  <a c>4 <c e>4 <e a>2 |
  <d gis>1

  \bar "||"

  <b' e>4 <gis b>8[ <a c>8] <b d>4 <a c>8[ <gis b>8] |
  <e a>4 <e a>8[ <a c>8] <c e>4 <b d>8[ <a c>8] |
  <gis b>4. <a c>8 <b d>4 <c e>4 |
  <a c>4 <e a>4 <e a>2

  \break

  r8 <f d'>4 <a f'>8 <c a'>4 <b g'>8[ <a f'>8] |
  <g e'>4. <e c'>8 <g e'>4 <f d'>8[ <e c'>8] |
  <gis b>4. <a c>8 <b d>4 <c e>4 |
  <a c>4 <e a>4 <e a>2

  \bar "|."
}

left = \relative c, {
  \global
  
  \repeat volta 2 {
    e8[ e'8 e,8 e'8] e,8[ e'8 e,8 e'8] |
    a,8[ a'8 a,8 a'8] a,8[ a'8 a,8 a'8] |
    gis,8_[ gis'8 gis,8 gis'8] e,8_[ e'8 e,8 e'8] |
    a,8[ a'8 a,8 a'8] a,8[ a'8 b,8 c8]

    \break

    d8 d,4 d8( d8[ ) d8 a'8 f8] |
    c8 c'4 c8 c,8[ g'8] g4 |
    b8 b'4 b8 r8 e,4 gis8 |
    a,8[ e'8 a,8 e'8] a,2
  }

  a8[ e'8 a,8 e'8] a,8[ e'8 a,8 e'8] |
  <gis, d'>8[ e'8 <gis, d'>8 e'8] <gis, d'>8[ e'8 <gis, d'>8 e'8] |
  a,8[ e'8 a,8 e'8] a,8[ e'8 a,8 e'8] |
  <gis, d'>8[ e'8 <gis, d'>8 e'8] <gis, d'>2

  \break

  a8[ e'8 a,8 e'8] a,8[ e'8 a,8 e'8] |
  <gis, d'>8[ e'8 <gis, d'>8 e'8] <gis, d'>8[ e'8 <gis, d'>8 e'8] |
  a,8[ e'8 a,8 e'8] a,8[ e'8 a,8 e'8] |
  <gis, d'>8[ e'8 <gis, d'>8 e'8] <gis, d'>2

  \bar "||"

  e8[ e'8 e,8 e'8] e,8[ e'8 e,8 e'8] |
  a,8[ a'8 a,8 a'8] a,8[ a'8 a,8 a'8] |
  gis,8_[ gis'8 gis,8 gis'8] e,8_[ e'8 e,8 e'8] |
  a,8[ a'8 a,8 a'8] a,8[ a'8 b,8 c8]

   \break
 
  d8 d,4 d8( d8[ ) d8 a'8 f8] |
  c8 c'4 c8 c,8[ g'8] g4 |
  b8 b'4 b8 r8 e,4 gis8 |
  a,8[ e'8 a,8 e'8] a,2

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
