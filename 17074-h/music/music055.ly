\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key e \major
  \time 4/4
  <e' gs>16 <ds fs>16 <e gs>16 <cs a'>16 <ds fs>16 <cs e>16 <ds fs>16 <b gs'>16 <cs e>16 <b ds>16 <cs e>16 <a fs'>16 <b ds>16 <a cs>16 <b ds>16 <gs e'>16^"etc." \bar ""
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }