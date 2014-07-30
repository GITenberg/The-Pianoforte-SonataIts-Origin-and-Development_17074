\version "2.6.3"
\include "english.ly"

melody = \relative c {
  \clef bass
  \key ef \major
  \time 4/4
  \partial 4*3 bf'4 ef,4 g4 | af4 c4 f,4 a4 | bf4 d4 g,4 b4 | c8 g8 f8 g8 af8 g8 f4 | ef4 \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "\"Bible\" Sonata, No. 6."
    opus = "Kuhnau."
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
