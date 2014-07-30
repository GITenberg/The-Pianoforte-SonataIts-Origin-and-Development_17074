\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {
  \time 3/4
  \key f \major
  \override Rest #'style = #'classical
  d2 r4 | r8 c8 f8 a8 g8 bf8 \bar ""
  }

   \new Staff {
   \clef bass
   \time 3/4
   \key f \major
   d,,,8 d'8 c8 bf8 a8 g8 | f2 s4
   } >>

  \header {
    piece = "(Frederick) Sonata 1. First Movement."
  }
  \midi { \tempo 4 = 100 }
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