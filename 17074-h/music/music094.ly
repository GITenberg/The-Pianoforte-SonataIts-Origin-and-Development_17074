\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key f \major
  \time 2/4
  a2:8 | a8[ bf8 g8] r8 | \stemUp bf2:8 | bf8[ c8 a8] r8 \bar ""
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
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
\paper { raggedright = ##t }