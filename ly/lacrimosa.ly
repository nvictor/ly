% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Lacrimosa"
  subtitle = "(D minor)"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "karl klindworth, victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 12/8
  \tempo "Larghetto" 4 = 60
}


right = \relative c'' {
  \global

  % NOTE(victor): right hand - mesures 1 - 2
  
  % NOTE(victor): Lilypond is more precise in their definition 
  % of ties v. slurs
  % Ties in lilypond are between same pitches and slurs can go
  % between notes of different pitches
  
  r8 cis8( d8) r8 a'8( bes8) r8 d,8( cis8) r8 c'8( bes8) 
  r8 a8( d8) r8 bes8( g8) r8 e8( f8) r8 a8( cis,8)

  \break

  % NOTE(victor): right hand - mesures 3 - 4

  <f, a>4.~ <f a>8 <a f'>8 <f d'>8 <g bes d>4.~( <g a cis>4) r8
  <f a>4.~ <f a>8 <a f'>8 <f d'>8 <g bes d>4.~( <g a cis>4) r8

  \break
  
  % NOTE(victor): right hand - mesures 5 - 6
  
  % NOTE(victor): Note the staccatissimo sign -!

  <f, a d>4-! r8 <a cis e>4-! r8 <a d f>4-! r8 <c e g>4-! r8
  <c f a>4-! r8 <e gis b>4-! r8 <e a c>4-! r8 <g b d>4-! r8

  \break

  % NOTE(victor): right hand - mesures 7 - 8

  <g c ees>4. <g c e>4. <f c' f>4. <a ees' fis>4.
  <g d' g>4. <gis d' fis g>4. <a d f a>4. <e a cis>4^\markup{\italic rit.} r8

  \break

  % NOTE(victor): right hand - mesures 9 - 10

  <e g a>4.~ <e g a>8 <d bes'>8 <cis g' a>8 <d f a>4.~ <d f a>8 <a' f'>8 <f d'>8
  <g bes cis>4.~ <g bes cis>8 <a d>8 <g cis e>8 <f a e'>4.~ <f a d>4.

  \break

  % NOTE(victor): right hand - mesures 11 - 12

  <ees bes' ees>4.~ <ees bes' ees>8 <bes' g'>8 <g ees'>8 <f a ees'>4.~ <f a d>4.
  <f a d>4.~ <f a d>8 <a f'>8 <g e'>8 <f e'>4.~( <f d'>8) bes8 aes8

  \break

  % NOTE(victor): right hand - mesures 13 - 14

  <f aes d>4.~ <f g d'>8 g'8 f8 <g, f'>4.~( <g e'>8) c8 bes8
  <g bes e>4.~ <g bes e>8 a'8 g8 <a, g'>4.~ <f a g'>4.

  \break

  % NOTE(victor): right hand - mesures 15 - 16

  <f aes b>4.( <f aes c>4. <f aes d>4. <f aes d>4.)
  <f aes d>4.( <f aes c>4. <f aes b>4. <f aes b>4.)

  \break

  % NOTE(victor): right hand - mesures 17 - 18

  <f g b>4.( <e g c>4. <e g d'>4.) <f c'>4( f'8)
  <f, bes d f>4.~( <f a d f>8 d'8 <f, a b>8) <f a c>4.~( <e g c>8 bes'8 <e, g>8)

  \break

  % NOTE(victor): right hand - mesures 19 - 21

  f8 f8( f'8) r8 f,8( f'8) r8 f,8( f'8) a,8( c8) f8
  
  % NOTE(victor): Measure 20 is a two voices passage

  <<
    \relative c'' { f4.~ f8 d8 b8 r8 c'8( a8) r8 bes8( g8) }
    \\
    \relative c'' { r8 f,8 bes8 r4 r8 c4.~ c4. }
  >>

  % NOTE(victor): Measure 21 is a two voices passage

  <<
    \relative c'' { r4. r8 cis'8( d8) r8 d,8( cis8) r8 a'8( a,8) }
    \\
    \relative c'' { f,4 r8 <a d>4 r8 <g bes>4 r8 <e a>4 r8 }
  >>

  \break

  % NOTE(victor): right hand - mesures 22 - 23 (Same as 3 and 4)

  <f, a>4.~ <f a>8 <a f'>8 <f d'>8 <g bes d>4.~( <g a cis>4) r8
  <f a>4.~ <f a>8 <a f'>8 <f d'>8 <g bes d>4.~( <g a cis>4) r8

  \break

  % NOTE(victor): right hand - mesures 24 - 25

  <f a d>4. <a c>4. <d bes' d>4. <c fis a c>4.
  <bes g' bes>4. <a ees' a>4. <g bes e g>4. <f a d f>4.

  \break

  % NOTE(victor): right hand - mesures 26 - 27

  r4. <d f b d>4. <cis e a c>4. <d f a d>4.
  <e a cis e>4. <f a d f>4. <e a d e>4. <e a cis e>4.

  \break

  % NOTE(victor): right hand - mesures 28 - 29

  % NOTE(victor): Measure 28 is a two voices passage

  <<
    \relative c'' { r8 cis8[ d8] r8 g8[ fis8] r8 bes8( a8) r8 d8( c8) }
    \\
    \relative c'' { <f, a d>4 r8 <a c>4 r8 <c fis>4 r8 <fis a>4 r8 }
  >>

  <g bes d>1.

  \break

  % NOTE(victor): right hand - mesures 30 - 31

  <fis a d>1.
  r1.

  \bar "|."
}

left = \relative c, {
  \global

  % NOTE(victor): left hand - mesures 1 - 2

  <d'' f>4 r8 <f a>4 r8 <e g>4 r8 <g cis>4 r8  
  <f d'>4 r8 <g, e'>4 r8 <f d'>4 r8 <a g'>4 r8

  \break

  % NOTE(victor): Left hand starts in the treble clef before moving to the bass
  \clef bass 

  % NOTE(victor): left hand - mesures 3 - 4

  d,8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)
  d,8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)

  % NOTE(victor): left hand - mesures 5 - 6

  d,,8 d'8( a8) a,8 e''8( a,8) d,8 f'8( d8) c,8 g''8( c,8)
  f,8 a'8( f8) e,8 b''8( e,8) a,8 c'8( a8) g,8 d''8( g,8)

  \break

  % NOTE(victor): left hand - mesures 7 - 8
  
  c,8 c'8( g8) bes,8 c'8( g8) a,8 c'8( f,8) c8 es'8( a,8)
  b,8 d'8( g,8) bes,8 d'8( gis,8) a,8 d'8( a8) a,8 cis'8( a8)

  \break

  % NOTE(victor): left hand - mesures 9 - 10

  cis,8 a'8( e8) a,8 a'8( g8) d8 a'8( f8) a,8 d'8( a8)
  e8 bes'8( g8) a,8 e''8( a,8) f8 d'8( a8) a,8 cis'8( d8)

  \break

  % NOTE(victor): left hand - mesures 11 - 12

  g,,8 bes'8( ees,8) g,8 ees''8( bes8) aes,8 ees''8( f,8) aes,8 d'8( bes8)
  a,8 d'8( a8) a,8 d'8( a8) bes,8 bes'8( f8) bes,8 d'8( a8)

  \break

  % NOTE(victor): left hand - mesures 13 - 14

  bes,8 d'8( aes8) bes,8 d'8( g,8) c,8 c'8( g8) c,8 e'8( c8)
  cis,8 e'8( bes8) cis,8 e'8( a,8) f8 d'8( a8) d,8 a'8( f8)

  \break

  % NOTE(victor): left hand - mesures 15 - 16

  d8[ f8 b8] c,8[ f8 c'8] b,8[ f'8 d'8] b,8[ f'8 b8]
  b,8[ f'8 d'8] c,8[ f8 c'8] des,8[ f8 b8] des,8[ f8 b8]

  \break

  % NOTE(victor): left hand - mesures 17 - 18

  d,8[ g8 b8] c,8[ g'8 c8] bes,8[ g'8 bes8] a,8[ f'8 f8]
  bes,8[ f'8 bes8] d,8[ f8 b8] c,8[ f8 c'8] c,8[ g'8 bes8]

  \break

  % NOTE(victor): left hand - mesures 19 - 21

  <f a>4 r8 <a, c ees f>4 r8 <bes d f>4 r8 <c ees f>4 r8
  <bes d bes'>4 r8 <d f aes>4 r8 <c f a>4 r8 <c e bes'>4 r8
  <f a>4 r8 <f, f'>4 r8 <e e'>4 r8 <a, a'>4 r8

  \break

  % NOTE(victor): left hand - mesures 22 - 23 (Same as 3 and 4)

  d'8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)
  d,8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)

  \break

  % NOTE(victor): left hand - mesures 24 - 25

  d,8 cis'8( d8) fis,8 a8( d8) g,8 cis8( d8) d,8 a'8( d8)
  ees,8 bes'8( ees8) c,8 a'8( ees'8) cis,8 g'8( e'8) d,8 a'8( d8)

  \break

  % NOTE(victor): left hand - mesures 26 - 27

  g,,8 e'8( bes'8) gis,8 f'8( b8) a,8 e'8( cis'8) a,8 f'8( d'8)
  a,,8 e''8( a8) a,8 f'8( d'8) a,8 e'8( a8) a,,8 cis''8( e,8)

  \break

  % NOTE(victor): left hand - mesures 28 - 29

  <d, d'>4 r8 <d d'>4 r8 <d d'>4 r8 <d d'>4 r8
  g8 bes'8( g8) d8 g'8( d8) bes,8 d'8( bes8) g,8 bes'8( g8)

  \break

  % NOTE(victor): left hand - mesures 30 - 31

  <d, d'>1.
  r1.

  \bar "|."
}

\score { 
  \new PianoStaff \with { instrumentName = "Piano" } <<
    \new Staff {
      \right
    }
    \new Staff {
      \left 
    }
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}
