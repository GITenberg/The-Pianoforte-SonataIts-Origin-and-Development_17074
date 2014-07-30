\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key f \major
  \time 6/8
  \once \override TextScript #'padding = #4.5
  \stemDown a'16^\markup { \italic {Allegretto.} } f''16 g,,16 f''16 a,,16 f''16 bf,,16 f''16 a,,16 f''16 bf,,16 f''16 | c,16 f'16 f,16 f'16 a,16 f'16 f,16 f'16 c,16 f'16 a,,16 f''16^"etc." \bar "|"
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }