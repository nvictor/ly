\version "2.22.1"

\header {
  title = "La preuve par 3 (instrumental)"
  subtitle = "(E minor)"
  composer = "alsoprodby, dj fun, saian supa crew"
  arranger = "victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key e \minor
  \numericTimeSignature
  \time 4/4
  % See: https://en.m.wikipedia.org/wiki/Tempo
  \tempo "Marcia moderato" 4 = 83
}

% See orchestra template:
% https://lilypond.org/doc/v2.21/Documentation/learning/orchestra-choir-and-piano

% Doing a piano reduction (played with strings here)

right = \relative c' {
  \global

  % NOTE(victor): right hand - appoggiatura

  % NOTE(victor): right hand - intro 8 bars - Riff is played staccatissimo (-!)

  % ^\markup{Intro}

  e8-! b8-! g8-! b8-!
  e8-! b8-! g8-! b8-!
  e8-! b8-! e8-! b8-!
  e8-! r8 r4

  e8-! b8-! g8-! b8-!
  e8-! b8-! g8-! b8-!
  e8-! b8-! e8-! b8-!
  e8-! r8 r4

  e8-! b8-! g8-! b8-!
  e8-! b8-! g8-! b8-!
  e8-! b8-! e8-! b8-!
  e8-! r8 r4

  e8-! b8-! g8-! b8-!
  e8-! b8-! g8-! b8-!
  e8-! b8-! e8-! b8-!
  c'8 a8 fis8 dis8
  
  % NOTE(victor): right hand - verse 18 bars

  % NOTE(victor): right hand - chorus 8 bars

  % NOTE(victor): right hand - verse 24 bars

  % NOTE(victor): right hand - chorus 8 bars

  % NOTE(victor): right hand - verse 24 bars

  % NOTE(victor): right hand - chorus 8 bars

  \bar "|."
}

left = \relative c, {
  \global

  % NOTE(victor): left hand - appoggiatura

  % NOTE(victor): left hand - intro 8 bars - Riff is played staccatissimo (-!)

  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! b8 e8 g8
 
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! b8 e8 g8

  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! b8 e8 g8

  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  <e e'>8-! r4 <e e'>8-!
  c'8 a8 fis8 dis8
 
  % NOTE(victor): left hand - verse 18 bars

  % NOTE(victor): left hand - chorus 8 bars

  % NOTE(victor): left hand - verse 24 bars

  % NOTE(victor): left hand - chorus 8 bars

  % NOTE(victor): left hand - verse 24 bars

  % NOTE(victor): left hand - chorus 8 bars

  \bar "|."
}

\score { 
  <<
    \new PianoStaff <<
      \new Staff \with {
        instrumentName = "strings"
        midiInstrument = "string ensemble 1"
      } { 
        \right 
      }
      \new Staff \with {
        instrumentName = "strings"
        midiInstrument = "string ensemble 1"
      } {
        \clef bass \left
      }
    >>
  >>

  \layout { }
  
  % NOTE(victor): midi output might not work everywhere
  \midi { }
}

