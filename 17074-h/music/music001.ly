\version "2.6.3"
\include "english.ly"

global = {
  \key f \major
  \time 4/2
  %Transcriber's Note: Time signature in original text was 4/4, but there are four half-notes to the measure.
}

i = \context Staff \relative c' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
    c'1 bf2 a2 | g2 b4\rest f4 a8 g8 a8 bf8 c2 \break
    b4\rest g4 a4 bf4 c2 c2 | bf2 a2 g2 b4\rest c4 \break
    d8 c8 d8 e8 f2 d1\rest | R1*4/2 \break
    R1*4/2 | R1*4/2 | \break
    \override Rest #'style = #'classical b1\rest f4\rest f4 a8[ g8 a8 bf8] | c2 a2 g1 \break
    b1\rest b2\rest b4\rest f4 | a8 g8 a8 bf8 c4 c4 bf2 a2 \break
    g2 f2 b1\rest | d2\rest d4\rest c4 bf2 a2 \break
    g4 g4 a8 g8 a8 b8 c2 d2\rest | d2\rest d4\rest c4 bf2 a2 \break
    g2 d'2\rest d2\rest d4\rest g,4 | a8 g8 a8 bf8 c2 d2\rest d4\rest f,4 \break
    a8 g8 a8 bf8 c2 d2\rest c2( | c4) bf4 a2 g1 | \once \override NoteHead #'style = #'baroque a\breve\fermata \bar "||"
 }

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  \override Rest #'style = #'classical
    R1*4/2 | r1 c2\rest f2
    ef2 d2 c2 c4\rest c4 | d8 c8 d8 e8 f1 ef2
    d2 c4 c4 d8 c8 d8 e8 f2 | R1*4/2
    R1*4/2 | r2 c2 d8 c8 d8 e8 f2
    ef2 d2 c2 f2 | e2 f1 e2
    f2 r4 f4 ef2 d2 | c2 r4 c4 d8[ c8 d8 e8] f2
    s2 s2 s1 | r2 c2 d8 c8 d8 e8 f4 d4
    e2 f2 g2 r4 e4 | f8 e8 f8 g8 a2 d,8 c8 d8 e8 f2
    e8 d8 e8 f8 g2 c,1\rest | r2 a'2 g2 f2
    e2 r4 c4 e8 d8 e8 f8 g2~ | g2 f1 e2 | \once \override NoteHead #'style = #'baroque f\breve
}

iii = \context Staff \relative c' {
  \context Voice = "iii"
  \voiceOne
  \override Rest #'style = #'classical
    R1*4/2 | R1*4/2
    R1*4/2 | f,1\rest f2\rest c'2
    bf2 a2 g2 f4\rest f4 | a8 g8 a8 bf8 c2 r4 g4 a4 bf4
    c2 c2 bf2 a2 | g1 f4 f4 a8[ g8 a8 bf8]
    c2 bf2 a2 f2\rest | g4\rest g4 a8 g8 a8 bf8 c1 
    R1*4/2 | R1*4/2
    a2\rest a4\rest f4 a8 g8 a8 bf8 c2 | bf2 a2 g2 f2
    e2 d2 c2 c'2 | bf2 a2 g2 a8[ g8 a8 bf8]
    c2 r4 c4 bf4 a4 g2 | r4 f4 a8 g8 a8 bf8 c2 f,2\rest
    f1\rest f4\rest c4 ef8[ d8 ef8 f8] | g4 g4 a8 g8 a8 bf8 c1 | \once \override NoteHead #'style = #'baroque c\breve
}

iv = \context Staff \relative c {
  \context Voice = "iv"
  \voiceTwo
  \override Rest #'style = #'classical 
    R1*4/2 | R1*4/2
    R1*4/2 | R1*4/2
    R1*4/2 | f1 \stemDown ef2 d2
    c2 r4 c4 d8 c8 d8 e8 \tieDown f2~ | f2 ef2 d1
    c4 c4 d4 ef4 f2 d2 | \once \override NoteHead #'style = #'baroque c\breve
    R1*4/2 | r1 b2\rest d4\rest f4
    ef2 d2 c2 r4 c4 | d8 c8 d8 e8 f2 c1\rest
    R1*4/2 | R1*4/2
    b2\rest c2 d2 e2 | f2 r4 f4 ef2 d2
    \override NoteHead #'style = #'baroque c\breve | c\breve | f,\breve_\fermata
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
  \midi { \tempo 2 = 100}
}