\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 4/4
  \key bf \major
  f8 g16 a16 \stemUp bf4 a8 bf16 c16 d4 | \stemDown c8 [f8 bf,8 ef8] \stemUp a,8 [d8 g,8 c8] | f,8 bf8 bf8 a8 bf4^"etc." \bar ""
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
  }
}
