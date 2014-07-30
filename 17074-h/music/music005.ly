\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 3/8
  e'16^\markup { \italic {Presto.}} cs16 d16 b16 a8^\trill
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
\paper { raggedright = ##t }
