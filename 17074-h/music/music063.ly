\version "2.6.3"
\include "english.ly"

global = {
  \key d \major
  \time 6/4
}

i = \context Staff \relative c'' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
    \partial 4*1 d4^\mf | cs2 fs,4 fs2 d'4 \break
    fs4. g,8 fs8_\markup { \italic {dim.} } fs8 fs2.~ \break
    fs4 b4\rest b4\rest \tieDown fs2.~^\markup { \italic {ten. sempre.} } | fs2.~ fs2^\markup { \italic {ten.} } \tieUp fs4~ \break
    fs2.~ fs2^\markup { \italic {riten.} } fs4 | fs2. g2( a4) | b1 \bar "||"
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  \override Rest #'style = #'classical
    \stemUp \partial 4*1 fs4 | e2 cs4 d2 fs4 |
    cs'4. s8 s8 s8 d,2. |
    d4 s4 s4 s2. | s2. s2 s4 |
    \stemDown s4 as4_( b4) \stemUp bs4 \stemDown cs4 e4 | \stemUp d2.\fz e2\> a4\! | fs1 |
}

iii = \context Staff \relative c' {
  \context Voice = "iii"
  \voiceThree
  \override Rest #'style = #'classical
    \partial 4*1 d4 | cs2 fs,4 fs2 d'4_\markup { \italic {cres.} } |
    e4.\sf s8 s8_\markup { \italic {dim.} } s8 \tieDown fs,2.~ |
    fs4 s4 s4 s2.\sf | s2. s2 \stemDown fs4~\sf |
    fs2._( fs2) <fs as>4\pp | \change Staff=bass\voiceOne \stemUp \override Stem #'length = #22 <fs b>2. <g b>2_( a4) | <b d>1^\pp |
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceOne
  \override Rest #'style = #'classical
    \partial 4*1 as8 b8 | as8[ fs8 as8^\p fs8 as8 fs8] b8[^( fs8 b8 d8)] \grace d16 cs8 b8 |
    as8[ fs8 as8 fs8 as8 fs8] b8([ fs8 b8 d8 cs8 b8]) |
    \stemDown g'8( fs8) cs'8( b8) g'8( fs8) f,2.\rest | \stemUp <es gs b>2.^( <es gs d'>4) d4\rest d4\rest |
    \stemUp fs,2.(^\markup { \italic \bold {p} \italic {cres.} } fs2) fs4 | \stemDown b2. b2. | b1 |
}

v = \context Staff \relative c, {
  \context Voice = "v"
  \voiceTwo
  \override Rest #'style = #'classical
    \partial 4*1 s4 | b2.( b4) r4 r4 |
    b2.( b4) r4 r4 |
    s4 s4 s4 s2. | d'2.\sf( b4\p) s4 s4 |
    fs,2 gs4 a4 as4 fs4 | b2. e2. | b1 |
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
   }
  \midi { \tempo 4 = 80 }
}
