\version "2.6.3"
\include "english.ly"

global = {
  \key c \major
  \time 4/4
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
    \partial 16*8 r16 \stemDown b'16 c16 a16 d16 b16 e16 b16 | c16 a16 d16 b16 e16 b16 c16 a16 d4 d16 d16 c16 b16 \break
    a16 e'16 f16 d16 g16 e16 a16 e16 f16 d16 g16 e16 a16 e16 f16 cs16 | d4 \autoBeamOff \stemUp a32[ d32 c32 b32 a32 g32 f32 e32] d32[ a'32 g32 f32 e32 d32 c32 b32] \change Staff=bass\voiceOne a32_([ \change Staff=treble\voiceOne \stemDown d'32 c32 b32 a32 g32 f32 e32]) | \stemUp d4 s4 \bar ""
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceOne
    \partial 2 \stemUp a2~ | a1~ | a1~ | a2~ a2 | a2
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceTwo
    \partial 2 \stemDown f2~ | f1~ | f1~ | f2~ f2 | f2
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
      \iii
    >>
  >>
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
  \midi { \tempo 4 = 92}
}
