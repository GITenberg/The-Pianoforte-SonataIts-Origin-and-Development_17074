\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 3/4
  b8^\markup{ \column { \line { Commencement of } \line { Andante theme. } } }[ cs8 d8 as8] \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 92 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }