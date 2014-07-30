\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \key bf \major
  \time 4/4
  \partial 8*1 bf,,8 | d''4. d8 d4 ef8 d8 | d4 bf4 \bar ""
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