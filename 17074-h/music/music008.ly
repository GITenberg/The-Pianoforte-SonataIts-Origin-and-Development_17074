\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {
  \cadenzaOn
  <e g c>2:8 <e g c>4. \bar ""
  }

  \new Staff {
  \clef bass
  \cadenzaOn
  \repeat "tremolo" 4 {c,,16 c'16} <c, c'>4. \bar ""
  } >>

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