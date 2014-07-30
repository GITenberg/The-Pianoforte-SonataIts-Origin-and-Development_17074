\version "2.6.3"
\include "english.ly"

global = {
  \key c \major
  \time 4/4
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
    b'8\rest^"Il combáttere frà l'uno e l'altro, e la loro contésa." c,8 c4 d8 b'8\rest d,4 | e8 b'8\rest e,4 d8 e8 f4 \break
    e4^\trill g16 f16 g16 f16 e8 b'8\rest e,16 d16 e16 d16 | c8 b'8\rest f16 e16 f16 e16 d16 g16 f16 g16 d16 e16 f16 g16 \break
    e4 b'4\rest b4\rest c16 bf16 c16 bf16 | a8 b8\rest a16 g16 a16 g16 f8 b8\rest bf16 a16 bf16 a16 \break
    g16 c16 bf16 c16 g16 a16 bf16 c16 a4 b4\rest | b16\rest \stemDown f'16 ef16 f16 \stemUp c16 d16 ef16 f16 <bf, d>4 b4\rest \break
    b8\rest f16 f16 f8 f8 <g bf>8 g16 g16 g8 g8 | <a c>4 <a c>16 <g bf>16 <a c>16 <g bf>16 a8 b8\rest <g bf>16 <f a>16 <g bf>16 <f a>16 \break
    \cadenzaOn g4 g16[_( f16 e16 d16)] e16[_( d16 c16 b16)] c8[ d32 e32 f32 g32 a32 b32 c32 d32] \stemDown e32[ f32 e32 d32 e8] \cadenzaOff \bar "|" \break
    b8\rest \stemUp e,8 f4 g4 f4 | c4 c4 c4 b4 \break
    b'16\rest g16 g16 f16 f16 f16 f16 e16 e2 | b'16\rest f16 f16 f16 f16 c16 c16 c16 c4 s4 | R1 \bar "||"
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  \override Rest #'style = #'classical
    s4 s4 s4 \stemUp b4 | \stemDown c8 s8 c4 b8[ c8] c8[ b8] |
    c4 e16 d16 e16 d16 c8 s8 c16 bf16 c16 bf16 | s2 s2 |
    c4 s4 s4 a'16 g16 a16 g16 | f8 s8 f16 e16 f16 e16 d8 s8 g16 f16 g16 f16 |
    e8 r8 s4 f4 s4 | s4 s4 f4 s4 |
    s8 d16 d16 d8 d8 d8 e16 e16 e8 e8 | e4 e8 e8 f8 s8 d8 d8 |
    \cadenzaOn e4 s16 s16 s16 s16 s16 s16 s16 s16 s8 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s8 \cadenzaOff |
    s8 c16 bf16 \stemUp c4 \stemDown c2 | \stemUp c4 c4 c4 b4 |
    b2 \stemDown b16\rest c16 c16 bf16 s4 | s2 s2 | s2 s2
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceOne
  \override Rest #'style = #'classical
    f8\rest <f a>8 <f a>4 <f bf>8 f8\rest s4 | g8 f8\rest a4 f8 g8 f4 |
    g4 f4\rest f8\rest s8 s4 | a8 f8\rest f4\rest b8 f8\rest d4\rest |
    g4 s8 s4 <f, a c>8 f'4\rest | \stemDown c'8 r8 c8 c8 r4 d8 d8 |
    s8 f,8\rest f4\rest \stemUp c'4 s4 | s4 f,4\rest s2 |
    s4 s4 s8 f8\rest s4 | s2 s2 |
    \cadenzaOn s4 f4\rest s16 s16 s16 s16 s8 f2\rest \cadenzaOff |
    s4 af8 g16 f16 e4 f4 | g4 af4 g2 |
    \stemDown <g, d' g>2 s4 \stemUp bf'16 bf16 bf16 af16 | \stemDown <c, f af>2 s4 \stemUp bf'8.^\trill af16 | \stemUp <f, c' f a>2 f'2\rest
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceTwo
  \override Rest #'style = #'classical 
    s8 s8 s4 s8 s8 g'4 | s8 s8 s4 s4 s4 |
    s4 s4 s8 s8 s4 | s8 s8 s4 s8 s4 s8 |
    r8 s8 s4 s8 s8 s4 | s8 s8 s4 s2 |
    s8 s8 s4 s4 s4 | s2 s2 |
    s4 s4 s8 s8 s4 | s2 s2 |
    \cadenzaOn s4 s4 s4 s8 s2 \cadenzaOff |
    s2 r8 s8 \stemUp c,4 | \stemDown c8 g'8 \stemUp d4 \stemDown ef8 d8 \stemUp d4 |
    s2 \stemDown <c g'>2 | s2 f4 e4 | s2 s2
}

v = \context Staff \relative c, {
  \context Voice = "v"
  \voiceThree
  \override Rest #'style = #'classical 
    \stemDown f8\rest f16 f16 f8 f8 bf8 g16 g16 g8 g8 | c8 a16 a16 a8 a8 d8[ c8] d8[ d16 d16] |
    c4 s4 s8 \stemUp <c, c'>16 <c c'>16 <c c'>8 <c c'>8 | \stemUp f8 d16 d16 d8 d8 g8 g8\rest s4 |
    s4 \stemUp <c, c'>16[ <c c'>16] <c c'>8[ <c c'>8] s8 s4 | s8 \stemUp f16 f16 f8 f8 \stemDown bf8 g16 g16 g8 g8 |
    c8 s8 s4 r16 f16 e16 f16 \stemUp c16 f16 a,16 c16 | f,4 s4 f'16\rest \stemDown bf16 a16 bf16 f16 bf16 d,16 f16 |
    \stemUp bf,4 bf16 a16 bf16 a16 g8 s8 c16 bf16 c16 bf16 | a8 a16 a16 a8 a8 d8 g,16 g16 g8 g8 |
    \cadenzaOn c4_"Vien tirata la selce colla frombola nella fronte del gigante" s4 s2 s4 s8 \cadenzaOff |
    s4_"casca Goliath." s4 s8 \stemDown c16 bf16 af8 g16 f16 | e4 fs4 g2 |
    s2 s2 | s2 <c g'>2 | s2 g2\rest
}

\score {
\context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \i
      \ii
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \iii
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
  }
  \midi { \tempo 4 = 100}
}

%%coding utf-8