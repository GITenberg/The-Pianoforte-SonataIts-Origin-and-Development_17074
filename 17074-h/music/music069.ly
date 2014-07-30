\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 3/4
  fs4 fs4 fs4 | e4 fs2 | g2 fs4 | e8 \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "Op. 2, No. 2."
   }
  \midi { \tempo 4 = 92 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
\paper { raggedright = ##t }