\version "2.6.3"
\include "english.ly"

melody = \relative c' {
  \clef bass
  \time 2/2
  \autoBeamOff
  \cadenzaOn
  \override Rest #'style = #'classical r4 e4^\markup { \tiny { \sharp } } a,4 c4^\markup { \tiny { 6 } } b8[^\markup { \tiny { 7 } } a8] b8[^\markup { \tiny { \sharp 6 } } e,8] a4 f4^\markup { \tiny { 6 } } \bar "|" e4^\markup { \tiny { \sharp etc.} } \bar ""
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
\paper { raggedright = ##t }