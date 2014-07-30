\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
  \new Staff {
  \key bf \major
  \time 4/4
  \stemDown <g' bf d>4. <bf d>8 <g c ef>4. <bf d>8 | <a c>4. <a c>8 <f bf d>4. <a c>8
  }

  \new Staff {
  \key bf \major
  \clef bass
  \stemUp g,8 f8 ef8 d8 c8 d8 ef8 c8 | f8 ef8 d8 c8 bf8 c8 d8 bf8
  }
>>

  \header {
    piece = "Collection I., Suite 7, Passacaille."
    opus = "Handel."
   }
  \midi { \tempo 4 = 100}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
