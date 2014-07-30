\version "2.6.3"
\include "english.ly"

\score {
\relative c' { <<
  \new Staff { <<
  \clef treble
  \key f \major
  \time 4/4
  \once \override TextScript #'padding = #3
    { s8^\markup { \italic {Allegro.} }^\p c'8 d8 ef8 ef8.( g32 f32) ef4 | s8^\mf d8 e8 f8 f8.( a32 g32) f4 | s4 s4 \once \override TextScript #'padding = #2 s4^"etc."  \bar "" } \\
    { b,8\rest <ef, g>8 <d f>8 <c g'>8 <b g'>4 <c g'>4 | b'8\rest <f a>8 <e g>8 <d a'>8 <cs a'>4 <d a'>4 | <c' e g bf>4\f^( bf'16)[ g32 f32 e32 d32 c32 bf32] \stemUp a16 s8. }
  >> }

  \new Staff {
  \clef bass
  \key f \major
  \time 4/4
    R1 | R1 | r32 c,,32[ d32 e32 f32 g32 a32 bf32] c4( <f, c'>4)
    }
>> }

  \midi { \tempo 4 = 110 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }     
  }
}
