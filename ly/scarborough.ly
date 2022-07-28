% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Scarborough fair"
  subtitle = "()"
  composer = ""
  arranger = "sardus orpheus, victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Andante moderato" 4 = 92
}

voice = \relative c' {
  \global

  % NOTE(victor): voice - mesures 1 - 2

  r2.
  r2.

  % NOTE(victor): voice - mesures 3 - 4

  r2.
  r2.

  \break

  % NOTE(victor): voice - mesures 5 - 8

  d2 d4
  a'2 a4
  e4. f8 e4
  d2.

}

right = \relative c' {
  \global

  % NOTE(victor): right hand - mesures 1 - 2

  <d a'>2.
  <d a'>2.

  % NOTE(victor): right hand - mesures 3 - 4

  <d a'>2.
  <d a'>2.

  \break

  % NOTE(victor): right hand - mesures 5 - 8

  <d a'>2.
  <d a'>2.
  <c g'>2.
  <a d>2.

}

left = \relative c, {
  \global

  % NOTE(victor): left hand - mesures 1 - 2

  d8 a'8 d8 f8 a8 d,8
  d,8 a'8 d8 f8 a8 d,8

  % NOTE(victor): left hand - mesures 3 - 4

  d,8 a'8 d8 f8 a8 d,8
  d,8 a'8 d8 f8 a8 d,8

  \break

  % NOTE(victor): left hand - mesures 5 - 8

  d,8 a'8 d2
  d,8 a'8 d2
  c,8 g'8 c2
  d,8 a'8 d4 d,8 e8

}

\score { 
  <<
    \new Voice {
      \voice
    }
    \new PianoStaff <<
      \new Staff {
        \right
      }
      \new Staff {
        \clef bass \left 
      }
    >>
  >>

  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}
