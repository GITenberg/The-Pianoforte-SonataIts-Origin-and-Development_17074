\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \time 9/8
  c2.\trill \grace {b32[ c32]} e4( e16.) c32 | g4.( g4) fs16 g16 gs16 a16 bf16 b16 c16 cs16 |
  d2.\trill \grace {cs32[ d32]} f4( f16.) d32 | g,4.( g4) g16( a16 bf16 b16 c16 cs16 d16 ds16) \bar "|"
}

\score {
  \new Staff \melody
  \header {
    piece = "Op. 31, No. 1."
    opus = "Beethoven."
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
