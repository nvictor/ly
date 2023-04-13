\version "2.22.0"

\header {
  title = "Chosen, U55"
  subtitle = "(B harmonic/natural minor)"
  composer = "Victor Noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key b \minor
  \numericTimeSignature
  \time 3/8
  \tempo "Larghetto" 4 = 45
}


right = \relative c'' {
  \global

  \section
  \sectionLabel "Intro"

  b4. ais4 cis8 b4.~b4.
  b4. ais4. fis4.~fis4.

  \break

  b4. ais4 cis8 b4.~b4.
  b4. ais4. g4.~g4.

  \break

  \section
  \sectionLabel "Theme"

  b4. ais4 g8 fis4.~fis4.
  b4. a4 fis8 e4.~e4.

  \break

  b'4. ais4 cis8 b4.~b4.
  b4. ais4 b8 fis4.~fis4.
  
  \fine
}

left = \relative c {
  \global
  \clef bass

  \section
  \sectionLabel "Intro"

  b8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break
  \section
  \sectionLabel "Theme"

  g,8 d'8 g8~g4.~g4.~g4.
  a,8 e'8 a8~a4.~a4.~a4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \fine
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
