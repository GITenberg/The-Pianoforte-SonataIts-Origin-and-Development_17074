\version "2.6.3"
\include "english.ly"

melody = \relative c, {
  \clef bass
  \key fs \minor
  \time 3/4
  fs4 a4 \times 2/3 {bs4 cs8} \bar ""
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