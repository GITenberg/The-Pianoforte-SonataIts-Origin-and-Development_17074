\version "2.6.3"
\include "english.ly"

\score {
\relative c' <<
  \new Staff {
  \time 4/4
  \key f \minor
  \stemDown \times 2/3 {f'8 cf8 af8} \stemUp \times 2/3 {cf8 af8 f8} \stemDown \times 2/3 {f'8 cf8 af8} \stemUp \times 2/3 {cf8 af8 f8} | \stemDown \times 2/3 {f'8 df8 bf8} \stemUp \times 2/3 {df8 bf8 \once \override TextScript #'padding = #2.5 f8^"etc."} \bar ""
  }
   \new Staff {
   \clef bass
   \time 4/4
   \key f \minor
   \override Rest #'style = #'classical ef4 r4 ef4 r4 | df4 f4
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