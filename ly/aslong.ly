\version "2.22.1"

\header {
  title = "As Long As You Love Me (Bass line)"
  subtitle = "(A minor)"
  composer = "Backstreet Boys"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

harmony = \chordmode {
  a1:m
  f1
  g1
  c2 b2:dim
  
  \break
  
  a1:m
  f1
  g1
  c1
  
  \break
  
  f1
  c1
  a1:m
  g1
  
  \break
  
  f1
  c1
  f2 e2:m
  d2:m g2
  
  \break
  
  f1
  c1
  a1:m
  e1:m
  
  \break
  
  a1:m
  g1
  f1
  f2 g2
  
  \break
  
  a1:m
  g1
  f1
  f2 g2

}

bass = \relative c {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4 = 100
  \clef bass

  % NOTE(victor): verses bars

       a8 a4_\markup{\italic{verse}}
  a8[ a8] a4
  a8[ f8] f4 
  f8[ f8] f4
  f8[ g8] g4
  g8[ g8] g4
  g8[ c8] c4
  c8[ b8] b4
  b8

  \break

       a8 a4_\markup{\italic{verse to chorus}}
  a8[ a8] a4
  a8[ f8] f4
  f8[ f8] f4
  f8[ g8] g4
  g8[ g8] g4
  g8
  c1

  \break

  % NOTE(victor): chorus

  f,8 f4_\markup{\italic{chorus}}
  f8[ f8] f4
  f8[ c'8] c4
  c8[ c8] c4
  c8[ a8] a4
  a8[ a8] a4
  a8[ g8] g4
  g8[ g8] g4
  g8

  \break

  f8 f4_\markup{\italic{chorus to bridge 1}}
  f8[ f8] f4
  f8[ c8] c4
  c8[ c8] c4
  c8[ f8] f4
  f8[ e8] e4
  e8[ d8] d4
  d8[ g8] g4
  g8

  \break

  f8 f4_\markup{\italic{chorus to bridge 2}}
  f8[ f8] f4
  f8[ c'8] c4
  c8[ c8] c4
  c8[ a8] a4
  a8[ a8] a4
  a8[ e'8] e4
  e8[ e8] e4
  e8

  \break

  a,8 a4_\markup{\italic{bridge}}
  a4 a4 r8
  g8 g4
  g4 g4 r8
  f8 f4
  f8[ f8] f4 r8
  f8 f4
  f8[ g8] g4 g8
  
  \break

  a8 a4_\markup{\italic{bridge to chorus}}
  a4 a4 r8
  g8 g4
  g4 g4 r8
  f8 f4
  f4 f4 r8
  f8 f4
  f8[ g8] g4 g8

  \bar "|."
}

\score {
  <<
    \new ChordNames \harmony
    \new Staff \with {
      instrumentName = "E.Bass"
      midiInstrument = "electric bass (pick)"
    } \bass
  >>
  
  \layout { }

  \midi { }
}
