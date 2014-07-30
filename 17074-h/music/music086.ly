\version "2.6.3"
\include "english.ly"

global = {
  \key ef \major
  \time 3/4
}

i = \context Staff \relative c'' {
  \context Voice = "i"
  \voiceOne
  bf4 af8\trill g8 f8\trill ef8 \bar ""
}

ii = \context Staff \relative c'' {
  \context Voice = "ii"
  \voiceTwo
  \change Staff=bass\voiceOne \stemUp \override Stem #'length = #22 g,8[ \change Staff=treble\voiceTwo ef'8] d8[ c8 \change Staff=bass\voiceOne \stemUp \override Stem #'length = #22 bf8 a8]
}

iii = \context Staff \relative c' {
  \context Voice = "iii"
  \voiceOne
  \stemDown g4 f8 ef8 d8 c8
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
  \midi { \tempo 4 = 80 }
}
\paper { raggedright = ##t }
