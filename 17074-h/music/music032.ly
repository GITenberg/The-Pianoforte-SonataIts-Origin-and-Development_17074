\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 4/4
  c8 c,8 r16 c'16 b16 a16 b8 b,8 r16 b'16 a16 g16 | a8[ a,8] \stemUp b8[ g8] \stemDown c16 d16 e16 f16 g8 g,8 | \stemUp c4 \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 72 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
