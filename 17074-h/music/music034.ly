\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef treble
  \time 4/4
  \autoBeamOff
  \cadenzaOn r8 e'16[^"Solo." d16] e16[ d16 c16 b16] a8^\markup { \italic { t } } \clef bass \stemUp c,,8 \stemDown d8^\markup { \center-align \tiny { 6 5 } } e8^\markup { \tiny { \sharp } } \bar "|" \stemUp a,8^\markup { \tiny { \sharp } } \clef treble \stemDown a'''16[^"Solo." g16] a16[ g16 f16 e16] \bar "|" d4 \clef bass f,,8^\markup { \tiny { 6 } } g8^\markup { \center-align \tiny { 6 5 } } a8^\markup { \tiny { \sharp } } \bar "|" d,8^\markup { \italic { t } }^"etc." \bar ""
}

\score {
  \new Staff \melody
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
