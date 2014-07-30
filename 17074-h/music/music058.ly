\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key f \minor
  \time 4/4
  \override Rest #'style = #'classical
    \times 2/3 {r8 c8 df8} \times 2/3 {d8 ef8 e8} \times 2/3 {f8 fs8 g8} \times 2/3 {af8 a8 bf8} | b8 c8 df8 d8 ef8-.( e8-. f8-. fs8-.) \break
    g4-.( af4-. a4-. bf4-.) | b4 r4 c4 r4 \bar "|"
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 120}
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
