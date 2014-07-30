\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 2/4
  \partial 16*4 r16 c16 b16 a16 | gs4 e4 \bar "|"
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
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
\paper { raggedright = ##t }