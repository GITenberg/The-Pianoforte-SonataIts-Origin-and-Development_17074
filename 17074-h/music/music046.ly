\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 3/4
  r8 c,16[ c'16 b,16 b'16 a,16 a'16 g,16 g'16 f,16 f'16] | e,4 \bar ""
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