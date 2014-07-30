\version "2.6.3"
\include "english.ly"

\score {
  \relative c' <<
  \new Staff { <<
  \key bf \major
  \time 3/4
    { \partial 8*2 \stemUp <g' bf>8 <fs bf>8 | bf4 bf4 <bf ef>8 <a ds fs>8 | <ef' g>4 <ds fs>4 <g, ef'>8 <a c fs>8 | ds4 bf4 <bf ef>8 <a ds>8 | c4^\trill bf4 <g c>8 <fs bf>8 | <ef a^\trill>4 <d g>4  \bar ""} \\
    { \partial 8*2 \stemDown ef8 ds8 | <ef g>4 <bf ds fs>4 g'8 fs8 | <ef bf'>4 <bf bf'>4 s4 | <fs' bf>2 g8 fs8 | <ef g>4 <d fs>4 ef8 d8 | c4 bf4 }
  >> }
  \new Staff {
  \key bf \major
  \clef bass
  \partial 8*2 s8 s8 | s4 s4 s4 | s4 s4 c8 a8 | bf2. | s4 s4 s4 | s4 s4
  }
>>
  \midi { \tempo 4 = 92}
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
