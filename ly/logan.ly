% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Logan"
  subtitle = "(A minor)"
  composer = "Marco Beltrami"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Adagio" 4 = 66
}

right = \relative c'' {
  \global

  % NOTE(victor): right hand - mesures 1 - 4

  r8 a8 a4 e'2 |
  r8 a,8 a4 e'8 ees4. |
  r8 a,8 a4 e'2 |
  r8 a,8^\markup \italic "rit." a4 c2
  
  \bar "||"
  
  \break
  
  % NOTE(victor): right hand - mesures 5 - 8

  r8 a8 a4 e'8 ees4. |
  r8 a,8 a4 gis8 f8 a8 c8 |
  r8 a8 a4 c2 |
  r8 a8 a4 c8 a8 ees'4

  \bar "||"
  
  \break
  
  % NOTE(victor): right hand - mesures 9 - 12

  r8 a,8 a4 c'8 a4. |
  r8 a,8 a4 gis'8 f8 a4 |
  r8 a,8 a4 c2 |
  r8 a8 a8 e8 e'8 a,8 ees'4

  \bar "||"
  
  \break
  
  % NOTE(victor): right hand - mesures 13 - 16
 
  r8 a,8 a4 c'8 a4. |
  r8 a,8 a4 gis'8 f8 a4 |
  r8 a,8 a4 c8 a4. |
  r8 a8 a4 gis8 f8 a4

  \bar "|."
}

left = \relative c' {
  \global

  % NOTE(victor): left hand - mesures 1 - 4

  a4. a8~ a2 |
  a4. a8~ a2 |
  a4. a8~ a2 |
  a4. a8~ a2

  \bar "||"
  
  \break

  % NOTE(victor): left hand - mesures 5 - 8

  c,4. a'8~ a4. a,8 |
  d4. a'8~ a2 |
  a,4. a'8~ a2 |
  a,4. a'8~ a2

  \bar "||"
  
  \break
  
  % NOTE(victor): left hand - mesures 9 - 12

  <c,, c'>4. a''8~ a2 |
  <d,, d'>4. a''8~ a2 |
  <a, a'>4. a'8~ a2 |
  <a, a'>4. a'8~ a2

  \bar "||"
  
  \break
  
  % NOTE(victor): left hand - mesures 13 - 16

  <c,, c'>4. a''8~ a4 <e' a>4 |
  <d,, d'>4. a''8~ a2 |
  <a, a'>4. a'8~ a2 |
  <a, a'>4. a'8~ a2

  \bar "||"
  
  \break

  \bar "|."
}

\score { 
  \new PianoStaff \with { instrumentName = "Piano" } <<
    \new Staff {
      \right
    }
    \new Staff {
      \clef bass \left 
    }
  >>
  
  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  %\midi { }
}
