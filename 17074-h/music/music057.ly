\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key bf \major
  \time 2/4
  \override Rest #'style = #'classical
  g'2~ | g4 ef4 | d2~ | d4 f4 | af,2_( | a4) \stemUp bf4 | af2 | g8 r8 r4 \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 130}
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
