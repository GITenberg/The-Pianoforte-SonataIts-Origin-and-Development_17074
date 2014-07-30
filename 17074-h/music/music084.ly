\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 6/8
  b8^"Scherzo."[ cs8 d8] as8 r8 r8 \bar ""
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
\paper { raggedright = ##t }