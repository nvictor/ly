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

  b4._\markup { "B" } ais4_\markup { "A#" } cis8_\markup { "C#" } b4._\markup { "B" }~b4.
  b4. ais4. fis4._\markup { "F#" }~fis4.

  \break

  b4. ais4 cis8 b4.~b4.
  b4. ais4. g4._\markup { "G" }~g4.

  \break

  \section
  \sectionLabel "Theme"

  b4._\markup { "B" } ais4_\markup { "A#" } g8_\markup { "G" } fis4._\markup { "F#" }~fis4.
  b4._\markup { "B" } a4_\markup { "A" } fis8_\markup { "F#" } e4._\markup { "E" }~e4.

  \break

  b'4._\markup { "B" } ais4_\markup { "A#" } cis8_\markup { "C#" } b4._\markup { "B" }~b4.
  b4._\markup { "B" } ais4_\markup { "A#" } b8_\markup { "B" } fis4._\markup { "F#" }~fis4.

  \break

  \section
  \sectionLabel "Variation 1"

  b4._\markup { "B" } ais4_\markup { "A#" } g8_\markup { "G" } fis4_\markup { "F#" } e8_\markup { "E" } d4._\markup { "D" }
  b'4._\markup { "B" } a4_\markup { "A" } fis8_\markup { "F#" } e4_\markup { "E" } d8_\markup { "D" } cis4._\markup { "C#" }

  \break

  b'4._\markup { "B" } ais4_\markup { "A#" } cis8_\markup { "C#" } b4._\markup { "B" } fis4._\markup { "F#" }
  b4._\markup { "B" } ais4_\markup { "A#" } b8_\markup { "B" } fis4._\markup { "F#" } e4._\markup { "E" }

  \break

  \section
  \sectionLabel "Variation 2"

  b'4. ais4 g8 fis4 e8 d4.
  b'4. a4 fis8 e4 d8 cis4.

  \break

  b'4. ais4 cis8 b4. fis4.
  b4. ais4 b8 fis4. e4.

  \break

  \section
  \sectionLabel "Variation 3"

  b'4. ais4 g8 fis4 e8 d4.
  b'4. a4 fis8 e4 d8 cis4.

  \break

  b''4. ais4 cis8 b4. fis4.
  b4. ais4 b8 fis4. e4.

  \break

  \section
  \sectionLabel "Coda"

  b4. ais4 g8 fis4.~fis4.
  b4. a4 fis8 e4.~e4.

  \break

  b'4. ais4 cis8 b4. fis4.
  b'4. ais4 cis8 b4. fis4.

  \break

  b,4. ais4 cis8 b4. fis4.
  b4. ais4 cis8 b4.~b4.

  \fine
}

left = \relative c {
  \global
  \clef bass

  \section
  \sectionLabel "Intro"

  b8_\markup { "B" } fis'8_\markup { "F#" } b8_\markup { "B" }~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  \section
  \sectionLabel "Theme"

  g,8_\markup { "G" } d'8_\markup { "D" } g8_\markup { "G" }~g4.~g4.~g4.
  a,8_\markup { "A" } e'8_\markup { "E" } a8_\markup { "A" }~a4.~a4.~a4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \section
  \sectionLabel "Variation 1"

  g,8 d'8 g8~g4.~g4.~g4.
  a,8 e'8 a8~a4.~a4.~a4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  \section
  \sectionLabel "Variation 2"

  g,8 d'8 g8~g4.~g4.~g4.
  a,8 e'8 a8~a4.~a4.~a4.

  \break

  b,,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  \section
  \sectionLabel "Variation 3"

  g8 d'8 g8~g4.~g4.~g4.
  a,8 e'8 a8~a4.~a4.~a4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  \section
  \sectionLabel "Coda"

  g,8 d'8 g8~g4.~g4.~g4.
  a,8 e'8 a8~a4.~a4.~a4.

  \break

  b,,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \break

  b,8 fis'8 b8~b4.~b4.~b4.
  b,8 fis'8 b8~b4.~b4.~b4.

  \fine
}

% More on chords here: https://lilypond.org/doc/v2.23/Documentation/notation/displaying-chords
harmony = \chords {
  \section
  \sectionLabel "Intro"
  
  % Omit no chord symbols
  \set chordChanges = ##t
  
  % Change default major 7 symbol
  \set majorSevenSymbol = \markup { maj7 }

  b1.:m
  b1.:m

  \break

  b1.:m
  b1.:m

  \break

  \section
  \sectionLabel "Theme"

  g1.:maj7
  a1.

  \break

  b1.:m
  b1.:m

  \break

  \section
  \sectionLabel "Variation 1"

  g1.:maj7
  a1.

  \break

  b1.:m
  b1.:m

  \break

  \section
  \sectionLabel "Variation 2"

  g1.:maj7
  a1.

  \break

  b1.:m
  b1.:m

  \break

  \section
  \sectionLabel "Variation 3"

  g1.:maj7
  a1.

  \break

  b1.:m
  b1.:m

  \break

  \section
  \sectionLabel "Coda"

  g1.:maj7
  a1.

  \break

  b1.:m
  b1.:m

  \break

  b1.:m
  b1.:m

  \fine
} 

\score {
  \new PianoStaff \with { instrumentName = "Piano" } <<
    \harmony
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
