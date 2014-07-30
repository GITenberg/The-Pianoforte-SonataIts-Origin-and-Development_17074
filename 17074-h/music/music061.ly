\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {
  \time 2/4
  \key g \major
  \autoBeamOff
    <g' b g'>8[ <a c a'>16. <b d b'>32] <c e c'>8[ <a c a'>8] \bar "|"
  }

   \new Staff {
   \clef bass
   \time 2/4
   \key g \major
     <g,, g'>4 <a' c>8[ <c e>8]
   } >>

  \midi { \tempo 8 = 72 }
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