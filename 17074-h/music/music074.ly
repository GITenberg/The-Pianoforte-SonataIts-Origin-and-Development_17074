\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \key fs \major
  \time 2/4
  gs'4 b,4 | b4\prall as8 \bar ""
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
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
\paper { raggedright = ##t }