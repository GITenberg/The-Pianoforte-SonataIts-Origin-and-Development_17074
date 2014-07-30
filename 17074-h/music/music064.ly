\version "2.6.3"
\include "english.ly"

global = {
  \key g \major
  \time 4/4
}

i = \context Staff \relative c'' {
  \context Voice = "i"
  \voiceOne
  \override Rest #'style = #'classical
  \once \override TextScript #'padding = #2
    g8(^\markup { \italic {Adagio.} } \stemDown <ef' g>8[\p <f a>8 <g bf>8]) b,8\rest <g ef'>8( <af f'>8 <bf g'>8) | \stemUp b8\rest g'8 f32[( ef16.) d32( cs16.)] <f, d'>8 <f a e'>8 b4\rest \break
    \stemDown b8\rest <fs ds'>8( <g e'>8 <a fs'>8) b8\rest <ds fs>8( <e g>8 <fs a>8) | <e g>8 b'8 a32[( g16.) fs32( e16.)] d16[( c16) <a' c>8-|] b,4\rest \bar "|"
}

ii = \context Staff \relative c' {
  \context Voice = "ii"
  \voiceTwo
  \override Rest #'style = #'classical
    s2 s2 | s8 bf'8 g8[ g8] s4 s4 |
    s2 s2 | s2 s4 s4
}

iii = \context Staff \relative c {
  \context Voice = "iii"
  \voiceOne
  \override Rest #'style = #'classical
    <ef, ef'>4^\ff f'4\rest \stemDown ef4 f4\rest | <ef ef'>4 <ef ef'>4 <d d'>8^\ff <c c'>8 f4\rest |
    <b, b'>4^\p f'4\rest b4 f4\rest | e4 g4 a8-| ds,8-|^\ff \once \override TextScript #'padding = #2 s4^"etc."
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
