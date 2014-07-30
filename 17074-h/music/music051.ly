\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key f \major
  \time 3/8
  { <a' c>8 f'8 f8 | \grace {e8[ g8]} f8 e8 r8 | c8 g'8 g8 \grace {g8[ a8]} <bf, g'>8[ <a f'>8^"etc."]} \bar "" \\
  { f4\p <a c>8 | <g bf>4 <g bf>8 | <e bf'>4 <e bf'>8 | f4 }
   >>
  }

  \midi { \tempo 8 = 63 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
