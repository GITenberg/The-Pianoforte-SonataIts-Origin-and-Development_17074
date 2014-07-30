\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \key d \major
  \time 3/4
  fs4^\markup { \italic {Andante.} } fs4. e8 | e8( d4) d8 e8 fs8 | g4 g4. fs8 | fs8( e4) \bar ""
}

\score {
  \new Staff \melody
  \header {
    piece = "Trio, Op. 97."
   }
  \midi { \tempo 4 = 92 }
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