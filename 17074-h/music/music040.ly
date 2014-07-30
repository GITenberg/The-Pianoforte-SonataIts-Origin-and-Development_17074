\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 2/4
  \key bf \major
  \cadenzaOn
  bf''16[ f16 ef16 d16 c16 bf16] f'8[ f,8] \bar ""
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
  }
}
\paper { raggedright = ##t }