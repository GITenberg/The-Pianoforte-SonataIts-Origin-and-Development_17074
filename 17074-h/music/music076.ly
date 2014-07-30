\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key a \major
  \time 3/4
  \partial 16*1 es16 | fs16[ cs8 es16] fs16[ cs8 es16] fs16[ cs16 fs16 gs16] | a16 \bar ""
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
    \context {
       \Staff \remove Time_signature_engraver
    }
  }
}
\paper { raggedright = ##t }