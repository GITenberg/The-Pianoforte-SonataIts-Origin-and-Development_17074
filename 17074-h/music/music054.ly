\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key g \major
  \time 2/4
  <g b>4 <b' d es gs>4 \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100 }
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