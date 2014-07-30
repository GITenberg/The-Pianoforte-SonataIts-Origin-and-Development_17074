\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \key f \major
  \time 3/4
  d8^"Clav. e Ped." d,8 r8 d'8 d8[ c16 bf16] | c8 c,8 r8 c'8 c8[ bf16 a16] | bf8 bf,8 r8 bf'8 bf8[ a16 g16] | a4 \bar ""
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
