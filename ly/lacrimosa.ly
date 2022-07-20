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
}

left = \relative c, {
  \global

  % NOTE(victor): left hand - mesures 1 - 2

  <d'' f>4 r8 <f a>4 r8 <e g>4 r8 <g cis>4 r8  
  <f d'>4 r8 <g, e'>4 r8 <f d'>4 r8 <a g'>4 r8

  \break

  % NOTE(victor): Left hand starts in the treble clef before moving to the bass
  \clef bass 

  % NOTE(victor): right hand - mesures 3 - 4

  d,8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)
  d,8 cis'8( d8) f,8 a8( bes8) e,8 d'8( cis8) a,8 bes'8( a8)
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
