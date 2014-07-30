\version "2.6.3"
\include "english.ly"

\score {
\relative c'' <<
  \new Staff {
  \key af \major
  \time 2/4
  \partial 16*2 c16 af16 | g16 af16 ef16 <af c>16 df,16 df'16 d,16 <af' d>16 | ef16 <af ef'>16 e16 <af e'>16 f16[ <af f'>16]^"etc." \bar ""
  }

  \new Staff {
  \clef bass
  \key af \major
  \time 2/4
  \partial 16*2 c,16^\ff( af16) | g16( af16 gf16 af16 f16 af16 ff16 af16) | ef16( af16 c,16 af'16 df,16[ af'16])
  } >>

 \midi { \tempo 8 = 140 }
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