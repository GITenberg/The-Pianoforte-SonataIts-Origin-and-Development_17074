\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 4/4
  \key bf \major
  r8 g8 g8 g8 bf8 bf8 bf8 bf8 | \stemUp cs,2 \stemDown r8 f8 f8 f8 | af8 af8 af8 af8 \stemUp b,2 \bar "||"
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 96}
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