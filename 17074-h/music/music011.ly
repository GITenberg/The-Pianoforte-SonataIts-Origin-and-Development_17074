\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 3/8
  d8 d8 fs8 | d8 a'8 fs8 \bar ""
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