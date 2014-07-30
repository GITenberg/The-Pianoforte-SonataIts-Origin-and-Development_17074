\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key e \major
  \time 2/4
  { \stemUp <gs'' b>4 <fs a>4 | \appoggiatura a16 <e gs>4 s4 \bar "" } \\
  { s4 s4 \grace s16 \stemDown e,8[ b8 e,8 e8_8] }
   >>
  }
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