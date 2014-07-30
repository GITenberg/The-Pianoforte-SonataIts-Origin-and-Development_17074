\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key c \major
  \time 4/4
  \partial 8*2 c8. e16 | g4 g4 g4 c4 | c2 b4^"etc." \bar ""
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