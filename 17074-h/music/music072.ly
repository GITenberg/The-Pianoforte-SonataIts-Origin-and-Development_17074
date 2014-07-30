\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \time 4/4
  \override Rest #'style = #'classical
  \partial 4*2 e4 r4 | r4 e4 fs4 g4 | g2 fs4^"etc." \bar ""
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