\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key c \minor
  \time 3/4
  \partial 4*1 bf4 | g4_( bf4) ef4~ | ef4( d8) r8 f4 | bf,4( f'4) af4~ | af4 g4 \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "\"Letter V,\" Pohl, No. 58."
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
