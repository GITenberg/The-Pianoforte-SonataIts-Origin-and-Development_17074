\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key ef \major
  \time 2/4
  \autoBeamOff
  b'8([ c8 d8 ef8] | f8[ g8 af8 g8] | af8[ g8 af8 g8]) \bar "|"
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120 }
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