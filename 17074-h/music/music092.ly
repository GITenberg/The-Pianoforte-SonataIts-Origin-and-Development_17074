\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key g \major
  \time 2/4
  \autoBeamOff
  \partial 8*2 a8[ a8] | a8[ b8] g8 g8 | g4 b8[ b8] | b8[ c8] a8 a8 | a8 \bar ""
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
