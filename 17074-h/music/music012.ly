\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key f \major
  \time 4/4
  \cadenzaOn
  \autoBeamOff  g'16[ a8. bf16] \bar "|" \stemUp c8. d16 bf8.^\trill[ a16] a8. \bar ""
}

\score {
  \new Staff \melody
  \header {
   piece = "\"Bible\" Sonata, No. 2. Kuhnau."
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