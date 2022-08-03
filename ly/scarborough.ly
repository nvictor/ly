% NOTE(victor): macOS builds are sort of old
% \version "2.22.0"
\version "2.20.0"

\header {
  title = "Scarborough fair"
  subtitle = "(D minor)"
  composer = ""
  arranger = "sardus orpheus, victor noagbodji"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Andante moderato" 4 = 94
}

voice = \relative c' {
  \global

  % NOTE(victor): voice - bars 1 - 2

  r2.
  r2.

  \repeat volta 2 {
    % NOTE(victor): voice - bars 3 - 4
    
    r2.
    r2.
    
    \break
    
    % NOTE(victor): voice - bars 5 - 8
    
    d2 d4
    a'2 a4
    e4. f8 e4
    d2.
    
    \break
    
    % NOTE(victor): voice - bars 9 - 13
      
    r4 a'4 c4
    d2 c4
    a4 b4 g4
    a2.~
    a2 d4
    
    \break
    
    % NOTE(victor): voice - bars 14 - 17
    
    d2 d4
    c2 a4
    a4 g4 f4
    e2.
    
    \break
    
    % NOTE(victor): voice - bars 18 - 22
    
    d2 a'4
    g2 f4
    e4 d4 c4
    d2.~
    d2.
  }

  % NOTE(victor): voice - bar 23

  r2.
  
  \bar "|."
}

right = \relative c' {
  \global

  % NOTE(victor): right hand - bars 1 - 2

  <d a'>2.
  <d a'>2.

  \repeat volta 2 {
    % NOTE(victor): right hand - bars 3 - 4

    <d a'>2.
    <d a'>2.

    \break

    % NOTE(victor): right hand - bars 5 - 8

    <d a'>2.
    <d a'>2.
    <c g'>2.
    <a d>2.

    \break

    % NOTE(victor): right hand - bars 9 - 13

    <c f>2.
    <d a'>2.
    <f a>4 <g b>2
    <d a'>2.~
    <d a'>2.

    \break

    % NOTE(victor): right hand - bars 14 - 17

    <d a'>2.
    <f a>2.
    <f a>4 <e g>4 <d f>4
    <c e>2.

    \break

    % NOTE(victor): right hand - bars 18 - 22

    <d a'>2.
    <c g'>2.
    <c g'>2.
    d2.~
    d2.
  }
  
  % NOTE(victor): right hand - bar 23

  <d a'>2.
  
  \bar "|."
}

left = \relative c, {
  \global

  % NOTE(victor): left hand - bars 1 - 2

  d8 a'8 d8 f8 a8 d,8
  d,8 a'8 d8 f8 a8 d,8

  \repeat volta 2 {
    % NOTE(victor): left hand - bars 3 - 4

    d,8 a'8 d8 f8 a8 d,8
    d,8 a'8 d8 f8 a8 d,8

    \break

    % NOTE(victor): left hand - bars 5 - 8

    d,8 a'8 d2
    d,8 a'8 d2
    c,8 g'8 c2
    d,8 a'8 d4 d,8 e8

    \break

    % NOTE(victor): left hand - bars 9 - 13

    f8 c'8 f2
    d,8 a'8 d2
    f,8 d'8 g2
    d,8 a'8 d8 f8 a4
    d,,8 a'8 d8 f8 a4

    \break

    % NOTE(victor): left hand - bars 14 - 17

    d,,8 a'8 d4 d,8 e8
    f8 c'8 f2
    f,8 c'8 e,4 d4
    c8 g'8 c8 e8 g4

    \break

    % NOTE(victor): left hand - bars 18 - 22

    d,8 a'8 d2
    c,8 g'8 c2
    c,8 g'8 c2
    d,8 a'8 d8 f8 a8 d,8
    d,8 a'8 d8 f8 a8 d,8
  }

  % NOTE(victor): left hand - bar 23

  <a d a'>2.

  \bar "|."
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
