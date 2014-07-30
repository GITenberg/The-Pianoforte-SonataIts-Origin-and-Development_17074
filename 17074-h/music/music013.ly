\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key bf \major
  \time 4/4
  \cadenzaOn
  \autoBeamOff g'16[ a8. bf16] \stemUp c4. c8 \bar "|" c4. d8 bf4.^\trill a8 \bar "|" a4 \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "Collection I., Suite 7, Ouverture.  Handel."
   }
  \midi { \tempo 4 = 100}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }