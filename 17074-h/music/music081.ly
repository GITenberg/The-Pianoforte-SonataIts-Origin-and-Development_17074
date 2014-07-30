\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \time 9/8
  c'8 r8 e,,8 e8[ f8 g8] a8[ g8]^"etc." \bar ""
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