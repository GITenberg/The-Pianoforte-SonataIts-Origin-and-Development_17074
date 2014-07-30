\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key a \minor
  \time 2/2
  \partial 4*1 c4 | \grace {b16[ c16]} b4 a4 e'4. \stemUp c16 a16 | e2. \bar ""
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