\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \time 3/8
  \key f \major
  \set Staff.instrument = \markup{ \italic { (a) } } r8 f8 f8 | f8 g16 f16 e16 f16 | g8 g8 g8^"etc." \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }