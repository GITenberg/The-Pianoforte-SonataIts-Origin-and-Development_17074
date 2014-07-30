\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key bf \major
  \time 2/2
  { \stemUp f'2 f2 | d2 d2 \break
    bf2 bf4. c16 d16 | ef8. f16 d8. ef16 c4 \bar "" } \\
  { \stemUp d2 c2 | bf2 a2 |
    g2 f4 \stemDown <d bf'>4 | a'4 bf4 \stemUp a4 } \\
  { \stemDown bf8 d8 bf8 d8 a8 c8 a8 c8 | g8 bf8 g8 bf8 f8 a8 f8 a8 |
    ef8 g8 ef8 g8 d8 f8 s4 | c4 bf4 f'4 }
   >>
  }

  \midi { \tempo 4 = 88}
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
