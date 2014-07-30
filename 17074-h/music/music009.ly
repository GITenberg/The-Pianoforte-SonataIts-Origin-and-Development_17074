\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 2/4
  ef,16 bf'16 a16 bf16 ef,16 bf'16 a16 bf16 | c,16 a'16 g16 a16 c,16 a'16 g16 a16^"etc." \bar ""
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