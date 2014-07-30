\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key bf \major
  \time 2/2
  { \stemUp f'2 f2 | d2 d2 \break
    bf2 bf2 | ef2 d2 | c2 } \\
  { \stemUp d2 c2 | bf2 a2 \break
    g2 f4 \stemDown \tieUp bf4~ | bf4. a8 \stemUp bf8 a16 g16 f8 g8 | a2 } \\
  { \stemDown bf4 f8 bf8 a8_\trill g8 a8 f8 | g4 d8 g8 f8_\trill ef8 f8 d8 \break
    ef4 bf8 ef8 d8 c8 d8 bf8 | c2 bf8 c8 d8 e8 | f2 \bar ""}
   >>
  }

  \midi { \tempo 4 = 160 }
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
