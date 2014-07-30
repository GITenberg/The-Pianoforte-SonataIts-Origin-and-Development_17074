\version "2.6.3"
\include "english.ly"

global = {
  \key ef \major
  \time 4/4
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
  f4 b8\rest c8 d4 b8\rest d8 | bf4 b8\rest bf8 ef4 b8\rest ef8 | c4. s8
  }

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  c4 s8 <f a>8 <f bf>4 s8 <f bf>8 | g4 s8 g8 <g c>4 s8 <g c>8 | a4. s8
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceOne
  f,8 g8 a8 f8 bf8 c8 d8 bf8 | \stemDown ef8 f8 g8 ef8 c8 d8 ef8 c8 | f8 g8 a8 g8^"etc."
}

\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \i
      \ii
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \iii
    >>
  >>
  \header {
    piece = "\"Bible\" Sonata, No. 6."
    opus = "Kuhnau."
   }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
  \midi { \tempo 4 = 100}
}
