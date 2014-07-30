\version "2.6.3"
\include "english.ly"

global = {
  \key c \minor
  \time 4/4
}

i = \context Staff \relative c'' {
  \context Voice = "i"
  \voiceOne
    \partial 8*5 c8 c8. bf16 d16\rest bf16_( bf16) bf16 | bf8. bf16 b16\rest a16_( a16) a16 a8. a16 d16\rest g,16_( g16) g16 \break
    g8. f16 b16\rest f16_( f16) f16_( f16) f16_( f16) f16_( f16) f16_( f16) e16 | f4 s4 \bar ""
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
    \partial 8*5 \stemUp f8 f4 f4 | f2 d4 d4 |
    s1 | s4 s4
}

iii = \context Staff \relative c' {
  \context Voice = "iii"
  \voiceThree
    \partial 8*5 \stemDown c8 d4 d4 | c4 c4 c4 bf4 |
    d4. c8 d4 c8 c8 | c4 s4
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceOne
    \partial 8*5 s8 s2 | s2 s2 |
    af'4. af8 g8[ af8] bf8[ bf8] | af4 s4
}

v = \context Staff \relative c {
  \context Voice = "v"
  \voiceTwo
    \partial 8*5 \stemUp af8 \stemDown d8 c8 d8 e8 | f8[ e8] f8[ f,8] \stemUp bf8[ a8] bf8[ c8] |
   \stemDown d8[ c8] d8[ af8] bf8[ g8] \stemUp c8[ c,8] | f8 g8 a8 f8
}

\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \i
      \ii
      \iii
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \iv
      \v
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
  \midi { \tempo 4 = 84 }
}
