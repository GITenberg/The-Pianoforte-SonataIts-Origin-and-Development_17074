\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef treble
  \time 6/8
  \autoBeamOff
  a8[ b8 c8] d8[ e8 f8] | \clef bass gs,8[ fs8 e8] gs8[ fs8 e8] | a8[^\markup { \tiny { \flat 6 } } g8 a8] b8[^\markup { \center-align \tiny { 6 5 } } a8 b8] | c8[ d8 e8] c8[ b8 c8]^"etc." \bar "|"
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
  }
}
