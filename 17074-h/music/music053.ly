\version "2.6.3"
\include "english.ly"

\score {
  \new Staff {
  \relative c' <<
  \time 2/4
  \key f \major
  \autoBeamOff
  { \partial 16*2 a''16[ d16] | c4 bf8 g16[ c16] | bf4 a8^"etc." \bar ""} \\
  { \partial 16*2 r8 | r8 fs,8[ g8] r8 | r8 e8[ f8] }
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