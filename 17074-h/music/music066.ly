\version "2.6.3"
\include "english.ly"

melody = \relative c'' {
  \key c \minor
  \time 3/4
  \override Rest #'style = #'classical
  g2. | g4.( bf8 ef4) | ef2.\( | d4\) r4 r4 | bf2. | bf4.( f'8 af4) | af2.\( | g4\) \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "Op. 10, No. 1."
    opus = "Beethoven."
   }
  \midi { \tempo 4 = 120}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
