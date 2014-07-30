\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key e \major
  \time 2/4
  { \stemUp <ds' fs>4 <e gs>4 | <ds fs>4 s4 \bar "" } \\
  { \stemUp b4 b4 \stemDown b8[ b,8 b8 b8] }
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