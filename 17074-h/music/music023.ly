\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
  \new Staff { <<
  \key bf \major
  \time 3/4
    { \stemUp <f bf d f>4 <f bf d>4 <g c ef>4 | <a c>4 <g bf>4 <f a>4 } \\
    { s4 s4 s4 | c2. }
  >> }

  \new Staff {
  \key bf \major
  \clef bass
  \stemUp bf,2 ef4 | f2.
  }
>>

  \midi { \tempo 4 = 92}
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