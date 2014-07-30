\version "2.6.3"
\include "english.ly"

\score {
  \new Staff {
  \relative c' <<
  \time 3/4
  \key d \major
  { fs4 d'4 cs4~ | cs4 e4 as,4 \bar ""} \\
  { d,4 fs4 <g b>4~ | <g b>2 e4 }
    >>
  }

  \midi { \tempo 4 = 120}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
\paper { raggedright = ##t }