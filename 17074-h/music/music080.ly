\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  c'4. e,,8 e4 f8 g8 | a4 g4 \bar ""
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
  }
}
\paper { raggedright = ##t }