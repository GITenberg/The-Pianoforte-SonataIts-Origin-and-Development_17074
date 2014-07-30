\version "2.6.3"
\include "english.ly"

melody = \relative c''' {
  \key af \major
  \time 3/4
  df4. c8 bf4 | r8 af8 g4 f4 | e4 f4 g4 | c,2 \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
