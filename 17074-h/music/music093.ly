\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key f \major
  \time 2/2
  \partial 8*4 \times 2/3 {a8[ a8 a8]} \times 2/3 {a8[ a8 a8]} | a8 bf8 g4-. a8 bf8 g4 | a8 bf8 g4-. \times 2/3 {bf8[ bf8 bf8]} \times 2/3 {bf8[ bf8 bf8]} | bf8( c8) a4-. bf8( c8) a4-. | bf8 c8 a4-. \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 140}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
