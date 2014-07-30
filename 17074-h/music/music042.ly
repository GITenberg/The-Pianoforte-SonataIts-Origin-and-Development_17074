\version "2.6.3"
\include "english.ly"

\score {
  \new Staff { 
  \relative c' <<
  \key a \major
  \time 2/4
  \autoBeamOff
  { \partial 8*3 \stemUp \times 2/3 {fs'16[ fs16 fs16]} \times 2/3 {fs16[ fs16 fs16]} \times 2/3 {fs16[ fs16 fs16]} | fs8:32 fs8:32 fs8:32 fs8:32 |
    fs8:32 \stemDown \times 2/3 {fs16[ b16 d16]} \times 2/3 {e,16[ as16 cs16]} \times 2/3 {d,16[ gs16 b16^"etc."]} \bar "" } \\
  { \autoBeamOff \partial 8*3 \times 2/3 {d,,16[ fs16 b16]} \times 2/3 {cs,16 [e16 as16]} \times 2/3 {b,16[ d16 gs16]} | \times 2/3 {as,16[ cs16 fs16]} \times 2/3 {b,16[ d16 fs16]} \times 2/3 {as,16[ cs16 fs16]} \times 2/3 {gs,16[ b16 fs16]} |
    \times 2/3 {fs16[ as16 cs16]} fs,8:32 fs8:32 fs8:32 }
   >>
  }

  \midi { \tempo 8 = 132}
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
