\version "2.6.3"
\include "english.ly"

\score {
  \relative c' {
  \new Staff { <<
  \clef bass
  \key bf \major
  \time 3/4
  { \stemUp r8 a8 r8 g8 r8 f8 | r8 g8 r8 f8 r8 ef8^"etc." } \\
  { \stemDown f4 ef4 d4 | ef4 d4 c4 }
  >> }
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