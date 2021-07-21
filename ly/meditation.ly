% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Méditation"
  subtitle = "(F sharp minor)"
  composer = "Joachim Raff"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key fis \minor
  \time 4/4
  \tempo "Andante" 4 = 96
}

right = \relative c' {
  \global
  
  b2\f( cis4 d4)
  ais1
  r4 r8. <fis'' cis' fis>16 <fis cis' fis>2

  b,,2( cis4 d4)
  a1
  r4 r8. <fis'' cis' fis>16 <fis cis' fis>2

  \break

  \clef bass g,,2( a4 b4)
  a( g fis g8 e8)
  c'4.\>( b8 ais4)
  \clef treble <ais d ais'>\p
  % TODO: << ais'4.\>( <b, eis>2 >> gis'8 <ais, fis'>2)
  <b eis ais>4.\>( gis'8 <ais, fis'>2)\!

  \break

  \bar "||"
  
  b2\f( cis4 d4)
  ais1
  r4 r8. <fis'' cis' fis>16 <fis cis' fis>2

  a,,2( b4 c4)
  gis1
  r4 r8. <e'' b' e>16 <e b' e>2

  \break

  \clef bass g,,2( a4 bes
  a g f g8 des8
  c'4.\> bes8 a4)
  \clef treble <a des a'>4\p
  \key c \major
  <bes e a>4.\>( g'8 <a, f'>2)\!

  \bar "|."
}

left = \relative c, {
  \global
  
  <b b'>2\f( <cis cis'>4 <d d'>4)
  <ais ais'>1
  \clef treble r4 r8. <cis'' fis cis'>16 <cis fis cis'>2

  \clef bass <b,, b'>2( <cis cis'>4 <d d'>4)
  <a a'>1
  \clef treble r4 r8. <cis'' fis cis'>16 <cis fis cis'>2

  \break

  \clef bass <g,, g'>2( a'4 b4)
  a( g fis g8 e8)
  c'4.( b8 ais4) d
  <cis, cis'>2 <fis cis'>2

  \break

  \bar "||"

  <b, b'>2\f( <cis cis'>4 <d d'>4)
  <ais ais'>1
  \clef treble r4 r8. <cis'' fis cis'>16 <cis fis cis'>2

  \clef bass <a,, a'>2( <b b'>4 <c c'>4)
  <gis gis'>1
  \clef treble r4 r8. <b'' e b'>16 <b e b'>2

  \break

  \clef bass <g,, g'>2^( a'4 bes
  a g f g8 des8
  c'4.\> bes8 a4)
  des
  \key c \major
  <c, c'>2 <f c'>2

  \bar "|."
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" } <<
    \new Staff = "right" {
      \right
    }
    \new Staff = "left" {
      \clef bass \left 
    }
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}
