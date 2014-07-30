\version "2.6.3"
\include "english.ly"

melody = \relative c {
  \clef bass
  \key bf \major
  \time 4/4
  \partial 4*3 bf'4 c4 ef,4 | f4 a4 bf4 d,4 | ef4 g4 a4 c,4 | d4 fs4 g4 \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "Collection I., Suite 7, Passacaille."
    opus = "Handel."
   }
  \midi { \tempo 4 = 100}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
