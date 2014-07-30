\version "2.6.3"
\include "english.ly"

global = {
  \key f \major
  \time 5/4
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
    \stemDown b'16\rest g16[ a16 bf16 c16 d16 e16 f16] g4 b,16\rest c,16[ d16 e16 f16 g16 a16 bf16] | c4 b4\rest b4\rest \bar ""
}

ii = \context Staff \relative c {
  \context Voice = "ii"
  \voiceOne
  \override Rest #'style = #'classical
    s2 s2 s4 | f16\rest \stemDown e16[ f16 g16 a16 bf16 c16 \change Staff=treble\voiceOne \stemDown d16] e4
}

\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \i
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \ii
    >>
  >>
  \midi { \tempo 4 = 100}
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
