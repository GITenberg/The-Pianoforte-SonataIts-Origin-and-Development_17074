\version "2.6.3"
\include "english.ly"

melody = \relative c''' {
  \key c \major
  \time 4/4
  c2 g8.[ e16 g8. e16] | \grace d8 c16 b16 c16 d16 c8 c8 c4 r8. g16 |
  g4. a16 b16 c8 g8 c8 d8 | e8 e16 f16 d8[ d16 e16 c16]^"etc." \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
