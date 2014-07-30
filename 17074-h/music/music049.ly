\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
  \new Staff {
  \key f \major
  \time 4/4
  \partial 8*1 c'8^\markup { \italic {(a)} } | a'8[ \times 2/3 {g16 f16 e16]} f8[ a,16( c16)] \grace c16 \stemDown bf8\prall a8 r8 f16( a16) \break
  \stemUp a16( g16 g8) r8 \stemDown a16( c16) c16( bf16) bf8 r8 c16( ef16) | ef16( d16 d16) <g, bf>16 \stemUp <g bf>16( <f a>16) <f a>16( <e g>16) \times 2/3 {a16[ g16 f16]} f8 r8 \stemDown c''16 a16 \break
  a4( g8) c16( g16) g4( f8) d'16( f,16) | f16( e16) c'16 g16 g8[( b32) a32 g32 f32] e4( d8\prall\turn) r8 \bar "||"
  }

  \new Staff {
  \key f \major
  \clef bass
  \time 4/4
  \partial 8*1 r8 | \override Rest #'style = #'classical r4 r8 <f,, c'>8 <e c'>8 <f c'>8 r8 <a c>8 |
  <bf d>4 <c ef>4 <d f>4 <a f'>4 | <bf f'>4 c4 f,4 f,4 |
  r8 <f' c'>8( <e c'>8) r8 r8 \stemDown <e c'>8( <d b'>8) b8 | \stemUp c8 d8 f8 f,8 g8 g'8 r4
  }
>>

  \midi { \tempo 4 = 96 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
