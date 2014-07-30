\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \time 4/4
  \partial 4*1 g4 | c4 d16 c16 b16 c16 e4 c4 | g4.. a16 g4 g4 |
  d'4 e16 d16 cs16 d16 f4 d8. b16 | g4.. a16 g4 g4 \bar "|"
}

\score {
  \new Staff \melody
  \header {
    piece = \markup{ {''In Native Worth''} \italic { (Creation). } }
    opus = "Haydn."
   }
  \midi { \tempo 4 = 120}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
