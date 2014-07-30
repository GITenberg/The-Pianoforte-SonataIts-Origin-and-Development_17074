\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \override Rest #'style = #'classical
  r16 c'16 c16 c16 c8 g8 e4 r4 | r16 a16 a16 a16 a8 e8 c4 r4 |
  r16 f16 f16 g16 a16 g16 a16 b16 \stemUp c16 g16 c8 \stemDown c8. b16 | c8 \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
     \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
