\version "2.6.3"
\include "english.ly"

\score {
\relative c' { <<
  \new Staff { <<
  \time 4/4
    { \cadenzaOn \autoBeamOff ef4 d4 c32_([ d32 ef32 d32 c32 af'32 g32 f32 ef32 d32 c8]) s32 s32 \bar "|" c32_([d32 ef32 d32 c32 af'32 g32 f32 ef32 d32 c8]) c32_([ d32 ef32 d32 c32 af'32 g32 f32 ef32 d32 c8]) \bar "|" } \\
    {\cadenzaOn c4 b4 s4 s4 | s2 s4. }
  >> }

  \new Staff { <<
  \clef bass
    { \cadenzaOn \stemDown f4 g4 \stemUp g2 | af2 s4. } \\
    { \cadenzaOn s4 s4 \stemDown ef2 | f2 s4. }
  >> }
>> }

  \midi { \tempo 4 = 92}
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
