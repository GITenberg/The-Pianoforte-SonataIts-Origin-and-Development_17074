\version "2.6.3"
\include "english.ly"

global = {
  \key f \major
  \time 4/4
}

i = \context Staff \relative c'' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
    s4^\markup { \italic {Poco adagio.} } s4 b4\rest \times 2/3 {a4(-> f8)->} | e4-> b'4\rest b4\rest \times 2/3 {bf4( g8)} \break
    f4-> a2-> d4 | e,2 \phrasingSlurUp a4\(( \times 2/3 {a4) g8} | f4\) d'2^"etc."  \bar ""
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  \override Rest #'style = #'classical
    \change Staff=bass\voiceOne r4^\markup {\bold \italic {p} \italic {e legato.}} \times 2/3 {r8 f,8 a8_(} \change Staff=treble\voiceTwo \times 2/3 {d8 f8 d8)} \times 2/3 {a8( cs8 d8)} | e4 \change Staff=bass\voiceOne \times 2/3 {r8 bf8 d8_(} \change Staff=treble\voiceTwo \times 2/3 {e8 g8 e8)} \times 2/3 {bf8( d8 e8)} | s4 \times 2/3 {r8 d8\( e8} \times 2/3 {f8 cs8 d8\)} \times 2/3 {f8 a8 d,8} | \times 2/3 {d8\( cs8 b8} \times 2/3 {cs8\) a8^( b8)} \phrasingSlurDown \times 2/3 {cs8\( e8 f8} \times 2/3 {g8 e8 cs8\)} | d4 f2
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceOne
  \override Rest #'style = #'classical
  \once \override TextScript #'padding = #1
    s4 s4 s4 s4 | s4 s4 s4 s4 | s4 f2 s4 | \times 2/3 {e,8^\p f8 g8} a2 \times 2/3 {a8_( cs8 a8)} | s4 bf'2^\sf
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceTwo
  \override Rest #'style = #'classical
    \stemUp \set tieWaitForNote = ##t \times 2/3 {d,8[~ f8~ a8]~} <d, f a d>2. | \times 2/3 {g8[~ bf8~ d8]~} \stemDown <g, bf d e>2. | \stemUp \times 2/3 {a8[~ d8]~ e8} \stemDown <a, d>2 \stemUp \times 2/3 {gs4^(^\sf_\markup {\tiny {8}} a8^>)_\markup {\tiny {8}}} | \stemDown a,4( \stemUp a2) s4 | \times 2/3 {bf'8[~ d8~ f8]~} \stemDown <bf, d f>2
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
