\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
  \new Staff {
  \key f \major
  \time 4/4
    \partial 8*1 c''8^\markup { \italic {(b)} } | bf16( a16) g16( f16) e16( f16) a,16( c16) \grace c16 \stemDown bf8\prall a8 f'4 | \stemUp g,8.[ a32 bf32] a8.[ bf32 c32] c8[( bf16) d16] \stemDown d8[( c16) ef16] \break
    ef8[( d16) <g, bf>16] \stemUp <g bf>16( <f a>16) <f a>16( <e g>16) \times 2/3 {a16[^( g16 f16)]} f8 r8 \stemDown c'16 c'16 | c8. a16 a16( g16) c16( b16) d16( c16) r16 g16 g16( f16) d'16( f,16) \break
    f16( e16) c'16( gs16) gs8( b32) a32 g32 f32 e4 d8\prall\turn) r8 \bar ""
  }

  \new Staff {
  \key f \major
  \clef bass
  \time 4/4
  \partial 8*1 r8 | \override Rest #'style = #'classical r4 r8 <f,, c'>8 <e c'>8 <f c'>8 r8 <a c>8 | <bf d>8 <bf d>8 <c ef>8 <c ef>8 <d f>8 <d f>8 <a f'>8 <a f'>8 |
  <bf[ f'>8 bf8] c8[ c8] f,4 f,4 | r8 <f' a>8 <e c'>8 r8 r8 \stemDown <e c'>8( <d b'>8) b8 | \stemUp c8 e8 f8 f,8 g8 g'8 r4
  }
>>

  \midi { \tempo 4 = 96}
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
}
