\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key f \major
  \time 3/4
  bf16 g16 fs16 g16 ef'4 cs4\turn | d4 d4 b4\turn | c4 c4 \stemDown a4\turn | bf2 \bar ""
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
