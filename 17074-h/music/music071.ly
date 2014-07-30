\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key c \minor
  \time 4/4
  c4^( c16.)[ c32 d16. ef32] ef4^( d8) \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 44}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }