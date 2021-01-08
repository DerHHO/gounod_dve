\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))


mBreak = { }
mPageBreak = { }

globalGloriaGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \set Score.currentBarNumber = 63
  \key c\major
  \time 4/4
  \tempo "Allegro"
}

vorspielpausenGloriaGounodDVE = {

}

sopranTextGloriaGounodDVE = \lyricmode {
  Glo -- ri -- a in ex -- cel
  -- sis De -- "o," glo -- ri -- a in ex -- cel -- sis De
  -- "o." Et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- "tis." Lau -- da --
  mus "Te," be -- ne -- di -- ci -- mus "Te," ad -- o -- ra --
  mus "Te," glo -- ri -- fi -- ca -- mus "Te." Gra -- ti -- "as," gra
  -- ti -- as a -- gi -- mus Ti -- bi prop -- ter mag -- nam glo -- ri
  -- am Tu -- "am." Do -- mi -- ne De -- "us," Rex coe -- les --
  "tis," De -- us Pa -- ter om -- ni -- po -- "tens."  Do -- mi
  -- ne Fi -- li u -- ni -- ge -- ni -- "te," Je --
  su Chri -- "ste," Je -- su Chri -- "ste," Do -- mi
  -- "ne,"  Do -- mi -- ne De -- "us," Ag --
  nus De -- "i," Fi -- li -- us Pat -- "ris." Qui tol --
  lis pec -- ca -- "ta," pec -- ca -- ta mun -- "di:" mi -- se
  -- re -- re no -- "bis." Qui tol -- lis pec -- ca -- "ta," pec -- ca
  -- ta mun -- "di:" sus -- ci -- pe de -- pre -- ca -- ti
  -- o -- nem nost -- "ram." Qui se -- "des," qui se -- des ad dex --
  te -- ram Pat -- "ris:" mi -- se -- re -- re no -- "bis," mi -- se
  -- re -- re no --  "bis." Quo -- ni -- am Tu so --
  lus Sanc -- "tus," Tu so -- lus Do -- mi -- "nus," Tu so
  -- lus Al -- tis -- si -- "mus," Je -- su Chri -- "ste," cum
  Sanc -- to Spi -- ri -- tu in glo -- ri -- a De --
  "i," in glo -- ri -- a De -- i Pat -- "ris," Tu so
  -- lus Al -- tis -- si -- "mus," cum Sanc -- to
  Spi -- ri -- tu in glo -- ri -- a De -- i Pat -- "ris."
  A -- "men," a -- "men."
}

altTextGloriaGounodDVE = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- "o," glo -- ri -- a in ex -- cel -- sis De
  -- "o." Et in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo
  -- lun -- ta -- "tis." Lau -- da -- mus "Te," be
  -- ne -- di -- ci -- mus "Te," ad -- o -- ra -- mus "Te," glo
  -- ri -- fi -- ca -- mus "Te." Gra -- ti -- "as," gra -- ti -- as a
  -- gi -- mus Ti -- bi prop -- ter mag -- nam glo -- ri -- am Tu
  -- "am." Do -- mi -- ne De -- "us," Rex coe -- les -- "tis,"
  De -- us Pa -- ter om -- ni -- po -- "tens."  Do -- mi -- ne
  Fi -- li u -- ni -- ge -- ni -- "te," Je --
  su Chri -- "ste," Je -- su Chri -- "ste," Do -- mi
  -- ne De -- "us," Do -- mi -- ne De -- "us,"
  Ag -- nus De -- "i," Fi -- li -- us Pat -- "ris." Qui
  tol -- lis pec -- ca -- "ta," pec -- ca -- ta mun -- "di:" mi
  -- se -- re -- re no -- "bis," mi -- se -- re -- re no -- "bis." Qui
  tol -- lis pec -- ca -- "ta," pec -- ca -- ta mun --
  "di:" sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nost --
  "ram." Qui se -- "des," qui se -- des ad dex -- te -- ram Pat --
  "ris:" mi -- se -- re -- re no -- "bis," mi -- se -- re -- re no
  --  "bis." Quo -- ni -- am Tu so -- lus Sanc
  -- "tus," Tu so -- lus Do -- mi -- "nus," Tu so -- lus
  Al -- tis -- si -- "mus," Je -- su Chri -- "ste," cum Sanc
  -- to Spi -- ri -- tu in glo -- ri -- a De -- "i,"
  in glo -- ri -- a De -- i Pat -- "ris," Tu so --
  lus Al -- tis -- si -- "mus," cum Sanc -- to Spi -- ri
  -- tu in glo -- ri -- a De -- i Pat -- "ris." A --
  "men," a -- "men."
}

sopranNotenGloriaGounodDVE = \tempTranspose \relative c'' {
  \globalGloriaGounodDVE
  \autoBeamOff
  \time 4/4  | % 63
  R1 | % 64
  c4.. ^\f c16 c2 | % 65
  c4 b4 a4 g4 | % 66
  c2 ( d2 ) | % 67
  c2. r4 | % 68
  c4.. c16 c2 | % 69
  c4 b4 a4 g4 \mBreak | \barNumberCheck #70
  c2 ( a2 ) | % 71
  g2. r4 | % 72
  g2 ^\p a4 ( b4 ) | % 73
  c2 g4 r4 | % 74
  g2 a4 ( b4 ) | % 75
  c4. g8 g4 r4 | % 76
  e'2 c2 \mPageBreak | % 77
  a4 ( b4 ) c4 ( d4 ) | % 78
  c2 ( b2 ) | % 79
  c2 r4 g4 ^\f | \barNumberCheck #80
  e'2 d2 | % 81
  c4 r4 g4 c4 | % 82
  b4 ( c4 ) d4 b4 | % 83
  c4 r4 g4 g4 \mBreak | % 84
  e'2 d2 | % 85
  c4 a4 d4 c4 | % 86
  b2 a2 | % 87
  g2. r4 | % 88
  c4. c8 b2 | % 89
  a4. a8 g4 r4 | \barNumberCheck #90
  c4. c8 b2 \mBreak | % 91
  a2 g4 r4 | % 92
  g4 c4 d4 e4 | % 93
  f2 e4 d4 | % 94
  c2 ( b2 ) | % 95
  c2. r4 | % 96
  c4.. c16 c2 \mPageBreak | % 97
  d2 c4 r4 | % 98
  c2. c4 | % 99
  d2 c4 r4 | \barNumberCheck #100
  c2 c2 | % 101
  a2 a4 a4 | % 102
  a2. a4 | % 103
  c1 ~ ^\fermata | % 104
  c4 r4 r2 \bar "||"
  \mBreak | % 105

  \tempo "Andante"
  c4.. ^\p bes16 a4 r4 | % 106
  d2 c4 r4 | % 107
  c4 ( a4 ) g4 ( bes4 ) | % 108
  bes4. bes8 a4 r4 | % 109
  g4 ( a4 ) bes4 ( g4 ) | \barNumberCheck #110
  d'2 c4 r4 \mBreak | % 111
  f,4 ( g4 ) a4 ( bes4 ) | % 112
  a2 g4 r4 | % 113
  R1 | % 114
  c2 bes8 [ a8 ] g8 [ f8 ] | % 115
  d'2 c8 [ bes8 ] a8 [ g8 ] \mPageBreak | % 116
  bes2 a4 r4 | % 117
  a4 a4 a4 a4 | % 118
  bes4 ( d4 ) c4 bes4 | % 119
  a2 ( g2 ) | \barNumberCheck #120
  f2 r4 a4 | % 121
  a2 f4 d'4 \mBreak | % 122
  c2 bes4 bes4 | % 123
  bes2 ( a4 ) g4 | % 124
  g2 f4 r4 | % 125
  R1*2 | % 127
  cis'4 cis4 cis4 cis4 \mBreak | % 128
  d2 cis4 a4 | % 129
  a2 f4 d'4 | \barNumberCheck #130
  c2 bes4 bes4 | % 131
  e4 ( d4 ) c4 ( bes4 ) | % 132
  bes2 a4 r4 | % 133
  a4.. a16 a2 \mPageBreak | % 134
  b4 d4 c4 b4 | % 135
  c4 e,4 b'2 | % 136
  a2 r4 a4 | % 137
  d2 d4 d4 | % 138
  bes2 bes4 bes4 | % 139
  c4.. c16 c2 \mBreak | \barNumberCheck #140
  d2 d4 r4 | % 141
  g,4 a4 bes4 c4 | % 142
  bes2 a4 r4 | % 143
  a4 b4 c4 d4 | % 144
  c2 ( b4 a4 ) | % 145
  b2. r4 \bar "||"
  \mBreak | % 146
  \key c \major | % 146
  \tempo "Allegro"
  c4.. ^\f c16 c2 | % 147
  c4 ( b4 ) a4 g4 | % 148
  c2( d2) | % 149
  c2. r4 | \barNumberCheck #150
  c4 ( b4 ) a4 g4 | % 151
  c4.. c16 c4 c4 \mPageBreak | % 152
  a2 a4 a4 | % 153
  d4.. d16 d2 | % 154
  g,2 c2 | % 155
  b2 ( a2 ) | % 156
  g2 r4 g4 | % 157
  a4 ( b4 ) c4( d4) \mBreak | % 158
  e4.. c16 c4 g4 | % 159
  a4 ( b4 ) c4 d4 | \barNumberCheck #160
  e2 c4 g4 | % 161
  a4 ( b4 ) c4 d4 | % 162
  e2 d2 | % 163
  c2 ( b2 ) \mBreak | % 164
  c2 r4 g4 | % 165
  a4 ( b4 ) c4 d4 | % 166
  e4.. c16 c4 g4 | % 167
  a4 ( b4 ) c4 ( d4 ) | % 168
  e4.. c16 c4 g4 \mPageBreak | % 169
  a4 ( b4 ) c4 d4 | \barNumberCheck #170
  e2 d2 | % 171
  c2 ( b2 ) | % 172
  c2. r4 | % 173
  c1 | % 174
  a2. r4 | % 175
  b1 | % 176
  c1 \bar "|."
  \mBreak | % 177
}

altNotenGloriaGounodDVE = \tempTranspose \relative c' {
  \globalGloriaGounodDVE
  \autoBeamOff
  \time 4/4  | % 63
  R1 | % 64
  c'4.. ^\f c16 c2 | % 65
  c4 b4 a4 g4 | % 66
  a2 ( b2 ) | % 67
  c2. r4 | % 68
  c4.. c16 c2 | % 69
  c4 b4 a4 g4 \mBreak | \barNumberCheck #70
  a2 ( fis2 ) | % 71
  g2. r4 | % 72
  g2 ^\p f2 | % 73
  e2 e4 r4 | % 74
  g2 f2 | % 75
  e4. e8 e4 r4 | % 76
  g2 e2 \mPageBreak | % 77
  c4 ( d4 ) e4 ( f4 ) | % 78
  e2 ( d2 ) | % 79
  e2 r4 g4 ^\f | \barNumberCheck #80
  g2 f2 | % 81
  e4 r4 g4 e4 | % 82
  d4 ( e4 ) f4 g4 | % 83
  e4 r4 g4 g4 \mBreak | % 84
  c2 b2 | % 85
  a4 fis4 g4 a4 | % 86
  g2 fis2 | % 87
  g2. r4 | % 88
  e4. e8 g2 | % 89
  f4. f8 e4 r4 | \barNumberCheck #90
  e4. e8 g2 \mBreak | % 91
  f2 e4 r4 | % 92
  e4 e4 f4 g4 | % 93
  a2 g4 f4 | % 94
  e2 ( d2 ) | % 95
  e2. r4 | % 96
  c'4.. c16 c2 \mPageBreak | % 97
  b2 c4 r4 | % 98
  c2. c4 | % 99
  b2 c4 r4 | \barNumberCheck #100
  c2 c2 | % 101
  f,2 f4 f4 | % 102
  f2. f4 | % 103
  e1 ~ ^\fermata | % 104
  e4 r4 r2 \bar "||"
  \mBreak | % 105
  a4.. ^\p g16 f4 r4 | % 106
  bes2 a4 r4 | % 107
  a4 ( f4 ) e4 ( g4 ) | % 108
  g4. g8 f4 r4 | % 109
  e4 ( f4 ) g4 ( e4 ) | \barNumberCheck #110
  bes'2 a4 r4 \mBreak | % 111
  d,4 ( e4 ) f4 ( g4 ) | % 112
  f2 e4 r4 | % 113
  bes'2 a8 [ g8 ] f8 [ e8 ] | % 114
  f2 c4 r4 | % 115
  bes'2 a8 [ g8 ] f8 [ e8 ] \mPageBreak | % 116
  g2 f4 r4 | % 117
  fis4 fis4 fis4 fis4 | % 118
  g4 ( bes4 ) a4 g4 | % 119
  f2 ( e2 ) | \barNumberCheck #120
  f2 r4 f4 | % 121
  f2 d4 f4 \mBreak | % 122
  a2 g4 g4 | % 123
  g2 ( f4 ) e4 | % 124
  e2 d4 r4 | % 125
  a'4 a4 a4 a4 | % 126
  bes2 a4 r4 | % 127
  a4 a4 a4 a4 \mBreak | % 128
  bes2 a4 a4 | % 129
  f2 d4 f4 | \barNumberCheck #130
  a2 g4 g4 | % 131
  c4 ( bes4 ) a4 ( g4 ) | % 132
  g2 f4 r4 | % 133
  a4.. a16 a2 \mPageBreak | % 134
  gis4 b4 a4 gis4 | % 135
  a4 e4 gis2 | % 136
  a2 r4 a4 | % 137
  fis2 fis4 fis4 | % 138
  g2 g4 g4 | % 139
  a4.. a16 a2 \mBreak | \barNumberCheck #140
  bes2 bes4 r4 | % 141
  e,4 f4 g4 e4 | % 142
  g2 f4 r4 | % 143
  fis4 g4 a4 fis4 | % 144
  a2 ( g4 fis4 ) | % 145
  g2. r4 \bar "||"
  \mBreak | % 146
  \key c \major | % 146
  c4.. ^\f c16 c2 | % 147
  c4 ( b4 ) a4 g4 | % 148
  a2( b2) | % 149
  c2. r4 | \barNumberCheck #150
  c4 ( b4 ) a4 g4 | % 151
  a4.. a16 a4 a4 \mPageBreak | % 152
  fis2 fis4 fis4 | % 153
  b4.. b16 b2 | % 154
  e,2 a2 | % 155
  g2 ( fis2 ) | % 156
  g2 r4 e4 | % 157
  f4 ( g4 ) a4 ( b4 ) \mBreak | % 158
  c4.. c16 c4 e,4 | % 159
  f4 ( g4 ) a4 b4 | \barNumberCheck #160
  c2 c4 e,4 | % 161
  f4 ( g4 ) a4 b4 | % 162
  c2 f,2 | % 163
  e2 ( d2 ) \mBreak | % 164
  e2 r4 e4 | % 165
  f4 ( g4 ) a4 b4 | % 166
  c4.. c16 c4 e,4 | % 167
  f4 ( g4 ) a4 ( b4 ) | % 168
  c4.. c16 c4 e,4 \mPageBreak | % 169
  f4 ( g4 ) a4 b4 | \barNumberCheck #170
  c2 f,2 | % 171
  e2 ( d2 ) | % 172
  e2. r4 | % 173
  a1 | % 174
  f2. r4 | % 175
  g1 | % 176
  e1 \bar "|."
  \mBreak | % 177
}

orgelRHOGloriaGounodDVE = \relative g' {
  \time 4/4  | % 63
  <e g c>2. _\f r4 | % 64
  <g c>2 <g c>2 | % 65
  <g c>4 <g b>4 <e a>4 <e g>4 | % 66
  <e a c>2 <f g b d>2 | % 67
  <e g c>1 | % 68
  <g c>2 <g c>2 | % 69
  <g c>4 <g b>4 <e a>4 <d g>4 \mBreak | \barNumberCheck #70
  <e a c>2 <d fis a>2 | % 71
  <d g>4 g4 g4 g4 | % 72
  g2 _\p a4 b4 | % 73
  c4 e4 d8 [ c8 b8 a8 ] | % 74
  g2 a4 b4 | % 75
  c2 g2 | % 76
  <g e'>2 <e c'>2 \mPageBreak | % 77
  <c a'>4 <d b'>4 <e c'>4 <f d'>4 | % 78
  <e g c>2 <d f b>2 | % 79
  <c e c'>2. g'4 _\f | \barNumberCheck #80
  <g c e>2 <f b d>2 | % 81
  <e c'>4 r4 g4 <e c'>4 | % 82
  <d b'>4 <e c'>4 <f d'>4 <d b'>4 | % 83
  <e c'>4 r4 g4 g4 \mBreak | % 84
  <e g e'>2 <e gis d'>2 | % 85
  <a c>4 <fis a>4 <g d'>4 <a c>4 | % 86
  <g b>2 <fis a>2 | % 87
  <d g>4 <d g>4 <e a>4 <f b>4 | % 88
  <e c'>2 <g b>2 | % 89
  <f a>2 <e g>2 | \barNumberCheck #90
  <e c'>2 <g b>2 \mBreak | % 91
  <f a>2 <e g>2 | % 92
  <e c'>2 <f d'>4 <g e'>4 | % 93
  <a f'>2 <g e'>4 <f a d>4 | % 94
  <e g c>2 <d f g b>2 | % 95
  <e g c>2. r4 | % 96
  <f a c>2 <e g c>2 \mPageBreak | % 97
  <d f g b>2 <e g c>2 | % 98
  <f a c>2 <e g c>2 | % 99
  <d f g b>2 <e g c>2 | \barNumberCheck #100
  <c c'>2 <c c'>2 | % 101
  <c f a>1 ~ ~ ~ | % 102
  <c f a>2 <c d f a>2 | % 103
  <c e g c>1 ~ ^\fermata ~ ~ ~ | % 104
  <c e g c>4 r4 r2 \bar "||"
  \mBreak | % 105
  \key f \major | % 105
  <a' c>4.. _\p <g bes>16 <f a>2 | % 106
  <bes d>2 <a c>4 r4 | % 107
  c4 a4 g4 bes4 | % 108
  <g bes>2 <f a>4 r4 | % 109
  <e g>4 <f a>4 <g bes>4 <e g>4 | \barNumberCheck #110
  <bes' d>2 <a c>4 r4 \mBreak | % 111
  <d, f>4 <e g>4 <f a>4 <g bes>4 | % 112
  <f a>2 <e g>4 r4 | % 113
  bes'2 a8 [ g8 f8 e8 ] | % 114
  c'2 bes8 [ a8 g8 f8 ] | % 115
  d'2 <a c>8 [ <g bes>8 <f a>8 <e g>8 ] \mPageBreak | % 116
  <g bes>2 <f a>4 r4 | % 117
  <fis a>4 <fis a>4 <fis a>4 <fis a>4 | % 118
  <g bes>4 <bes d>4 <a c>4 <g bes>4 | % 119
  <f a>2 <c e g>2 | \barNumberCheck #120
  <c f>2. <f a>4 | % 121
  <f a>2 <d f>4 <f d'>4 \mBreak | % 122
  <a c>2 <g bes>4 <g bes>4 ~ ~ | % 123
  <g bes>4 <g bes>4 <f a>4 <e g>4 | % 124
  <e g>2 f4 r4 | % 125
  <e a>4 <e a>4 <e a>4 <e a>4 | % 126
  <f bes>2 <e a>4 r4 | % 127
  <e a cis>4 <e a cis>4 <e a cis>4 <e a cis>4 \mBreak | % 128
  <f bes d>2 <e a cis>4 r4 | % 129
  <f a>2 <d f>4 <f d'>4 | \barNumberCheck #130
  <a c>2 <g bes>4 <g bes>4 | % 131
  <c e>4 <bes d>4 <a c>4 <g bes>4 | % 132
  <g bes>2 <f a>4 r4 | % 133
  <f a>2 <e a>2 \mPageBreak | % 134
  <gis b>4 <b d>4 <a c>4 <gis b>4 | % 135
  <a c>2 <d, gis b>2 | % 136
  <c e a>2. r4 | % 137
  <d fis d'>1 | % 138
  <d g bes>1 | % 139
  <f a c>1 \mBreak | \barNumberCheck #140
  <d f bes d>2. r4 | % 141
  <e g>4 <f a>4 <g bes>4 <e c'>4 | % 142
  <e g bes>2 <f a>4 r4 | % 143
  <fis a>4 <g b>4 <a c>4 <fis d'>4 | % 144
  <a c>2 <g b>4 <fis a>4 | % 145
  <g b>2. r4 \bar "||"
  \mBreak | % 146
  \key c \major | % 146
  <e g c>2 _\f <e g c>2 | % 147
  <g c>4 <g b>4 <e a>4 <e g>4 | % 148
  <e a c>2 <f b d>2 | % 149
  <e c'>2. r4 | \barNumberCheck #150
  <g c>4 <g b>4 <e a>4 <d g>4 | % 151
  <e a c>2. <e a c>4 \mPageBreak | % 152
  <fis a>2. <fis a>4 | % 153
  <fis b d>2. <fis b d>4 | % 154
  <e g>2 <e a c>2 | % 155
  <g b>2 <d fis a>2 ~ | % 156
  <d g>2. <e g>4 | % 157
  <f a>4 <g b>4 <a c>4 <b d>4 \mBreak | % 158
  <e, c' e>2. <e g>4 | % 159
  <f a>4 <g b>4 <a c>4 <b d>4 | \barNumberCheck #160
  <e, c' e>2. <e g>4 | % 161
  <f a>4 <g b>4 <a c>4 <b d>4 | % 162
  <c e>2 <f, a d>2 | % 163
  <e g c>2 <d f g b>2 \mBreak | % 164
  <e c' e>2. <e g>4 | % 165
  <f a>4 <g b>4 <a c>4 <b d>4 | % 166
  <e, c' e>2. <e g>4 | % 167
  <f a>4 <g b>4 <a c>4 <b d>4 | % 168
  <e, c' e>2. <e g>4 \mPageBreak | % 169
  <f a>4 <g b>4 <a c>4 <b d>4 | \barNumberCheck #170
  <c e>2 <f, a d>2 | % 171
  <e g c>2 <d f g b>2 | % 172
  <e c' e>2. r4 | % 173
  <c e c'>1 | % 174
  <d f a>2. r4 | % 175
  <d f g b>1 | % 176
  <c e g c>1 \bar "|."
  \mBreak | % 177
  %{\key f \major | % 105
  <a c>4.. _\p <g bes>16 <f a>2 | % 106
  <bes d>2 <a c>4 r4 | % 107
  c4 a4 g4 bes4 | % 108
  <g bes>2 <f a>4 r4 | % 109
  <e g>4 <f a>4 <g bes>4 <e g>4 | \barNumberCheck #110
  <bes' d>2 <a c>4 r4 \mBreak | % 111
  <d, f>4 <e g>4 <f a>4 <g bes>4 | % 112
  <f a>2 <e g>4 r4 | % 113
  bes'2 a8 [ g8 f8 e8 ] | % 114
  c'2 bes8 [ a8 g8 f8 ] | % 115
  d'2 <a c>8 [ <g bes>8 <f a>8 <e g>8 ] \mPageBreak | % 116
  <g bes>2 <f a>4 r4 | % 117
  <fis a>4 <fis a>4 <fis a>4 <fis a>4 | % 118
  <g bes>4 <bes d>4 <a c>4 <g bes>4 | % 119
  <f a>2 <c e g>2 | \barNumberCheck #120
  <c f>2. <f a>4 | % 121
  <f a>2 <d f>4 <f d'>4 \mBreak | % 122
  <a c>2 <g bes>4 <g bes>4 ~ ~ | % 123
  <g bes>4 <g bes>4 <f a>4 <e g>4 | % 124
  <e g>2 f4 r4 | % 125
  <e a>4 <e a>4 <e a>4 <e a>4 | % 126
  <f bes>2 <e a>4 r4 | % 127
  <e a cis>4 <e a cis>4 <e a cis>4 <e a cis>4 \mBreak | % 128
  <f bes d>2 <e a cis>4 r4 | % 129
  <f a>2 <d f>4 <f d'>4 | \barNumberCheck #130
  <a c>2 <g bes>4 <g bes>4 | % 131
  <c e>4 <bes d>4 <a c>4 <g bes>4 | % 132
  <g bes>2 <f a>4 r4 | % 133
  <f a>2 <e a>2 \mPageBreak | % 134
  <gis b>4 <b d>4 <a c>4 <gis b>4 | % 135
  <a c>2 <d, gis b>2 | % 136
  <c e a>2. r4 | % 137
  <d fis d'>1 | % 138
  <d g bes>1 | % 139
  <f a c>1 \mBreak | \barNumberCheck #140
  <d f bes d>2. r4 | % 141
  <e g>4 <f a>4 <g bes>4 <e c'>4 | % 142
  <e g bes>2 <f a>4 r4 | % 143
  <fis a>4 <g b>4 <a c>4 <fis d'>4 | % 144
  <a c>2 <g b>4 <fis a>4 | % 145
  <g b>2. r4 \bar "||"
  \mBreak | % 146
  \key c \major | % 146
  <e g c>2 _\f <e g c>2 | % 147
  <g c>4 <g b>4 <e a>4 <e g>4 | % 148
  <e a c>2 <f b d>2 | % 149
  <e c'>2. r4 | \barNumberCheck #150
  <g c>4 <g b>4 <e a>4 <d g>4 | % 151
  <e a c>2. <e a c>4 \mPageBreak | % 152
  <fis a>2. <fis a>4 | % 153
  <fis b d>2. <fis b d>4 | % 154
  <e g>2 <e a c>2 | % 155
  <g b>2 <d fis a>2 ~ | % 156
  <d g>2. <e g>4 | % 157
  <f a>4 <g b>4 <a c>4 <b d>4 \mBreak | % 158
  <e, c' e>2. <e g>4 | % 159
  <f a>4 <g b>4 <a c>4 <b d>4 | \barNumberCheck #160
  <e, c' e>2. <e g>4 | % 161
  <f a>4 <g b>4 <a c>4 <b d>4 | % 162
  <c e>2 <f, a d>2 | % 163
  <e g c>2 <d f g b>2 \mBreak | % 164
  <e c' e>2. <e g>4 | % 165
  <f a>4 <g b>4 <a c>4 <b d>4 | % 166
  <e, c' e>2. <e g>4 | % 167
  <f a>4 <g b>4 <a c>4 <b d>4 | % 168
  <e, c' e>2. <e g>4 \mPageBreak | % 169
  <f a>4 <g b>4 <a c>4 <b d>4 | \barNumberCheck #170
  <c e>2 <f, a d>2 | % 171
  <e g c>2 <d f g b>2 | % 172
  <e c' e>2. r4 | % 173
  <c e c'>1 | % 174
  <d f a>2. r4 | % 175
  <d f g b>1 | % 176
  <c e g c>1 \bar "|."
  \mBreak | % 177%}
}

orgelRHUGloriaGounodDVE = \relative c' {
  %{\time 4/4  <c g' c>2. r4 <c' e>2 <c e>2 <c e>4 <g d'>4 <a c>4 <e b'>4
  <a c>2 <g d'>2 <c, g' c>4 c4 e4 g4 <c e>2 <c e>2 <c e>4 <g d'>4 <a
  c>4 b4 \mBreak <a c>2 ~ ~ <d, a' c>2 <g b>4 g4 ^\> g4 g4 -\! b2 c4
  d4 c1 b2 c4 d4 c1 c2 <c, g'>2 \mPageBreak f2 g4 a4 g2 ~ <g, g'>2 <c
  g'>2. g'4 <c e>2 <g d'>2 <c, g' c>4 g'4 e4 c4 g'2. g4 c4 c,4 e4
  g4 \mBreak c2 <e, b'>2 a4 c4 b4 a4 b2 c2 b4 b4 c4 d4 c2 e,2 f4 a4 c4
  g4 c,2 d4 e4 \mBreak f8 [ g8 a8 b8 ] c2 c1 ~ c2. f,4 g2 ~ <g, g'>2 <c
  c'>4 <c c'>4 <c c'>4 <c c'>4 <c c'>1 ~ ~ \mPageBreak <c c'>4 <c
  c'>4 <c c'>4 <c c'>4 <c c'>1 ~ ~ <c c'>4 <c c'>4 <c c'>4 <c c'>4
  c2 c2 <f, f'>1 ~ ~ <f f'>1 <c c'>1 ~ ^\fermata ~ <c c'>4 r4 r2 \bar
  "||"
  \mBreak | % 105
  \key f \major f'4 a4 c4 cis4 d4 e4 f8 [ c8 a8 f8 ] a4 c4 bes4 g4 c2.
  e4 \rest c1 d4 e4 f4 e4 \rest \mBreak bes2 c4 d4 c4 b4 c4 c,4 ~ bes'1
  a2 c4 a4 bes4 g4 c2 ~ \mPageBreak c2. g'4 \rest d4 d4 d4 d4 d4 e4 f4
  d4 c2 <c, bes'>2 <f a>2. r4 d4 f4 a4 <d, d'>4 ~ \mBreak d'2. e8 [ d8
  ] <a cis>1 ~ ~ <d, a' cis>2 ~ ~ <d a' d>4 r4 <a' cis>4 <a cis>4 <a
  cis>4 <a cis>4 d2 cis4 d,4 \rest a'4 a4 a4 a4 \mBreak g4 f8 [ g8
  ] a4 r4 d,4 f4 a4 <d, d'>4 d'2. d,4 \rest c'1 ~ c2. f4 \rest d2 c2
  \mPageBreak b4 gis4 a4 d,4 e1 <a, a'>2. a'4 <d, a'>1 <g bes>1 <f c'>1
  \mBreak <bes, f' bes>2. r4 c'2 d4 c4 c2. d,4 \rest d'1 es2 d4 c4 d2.
  d,4 \rest \bar "||"
  \mBreak | % 146
  \key c \major <c g' c>2 <c g' c>2 <c' e>4 <g d'>4 <a c>4 <e b'>4 <a
  c>2 <g d'>2 ~ <c, g' c>4 c4 e4 g4 <c e>4 <g d'>4 <a c>4 b4 a2. a4
  \mPageBreak <d, d'>2. <d d'>4 <b b'>2. <b b'>4 <e b'>2 <c c'>2 d'2 c2
  <g b>2. r4 R1 \mBreak <c, g' c>2. r4 R1 <c g' c>2. <e g>4 <f a>4 <g
  b>4 <a c>4 <b d>4 <c e>2 f,2 g2 ~ <g, g'>2 \mBreak <c g' c>2. r4
  R1 <c g' c>2. r4 R1 <c g' c>2. <e g>4 \mPageBreak <f a>4 <g b>4 <a c>4
  <b d>4 <c e>2 f,2 g2 ~ <g, g'>2 <c g' c>2. r4 <a a'>1 ~ <d a'>2. r4
  <g, g'>1 <c, c'>1 \bar "|."
  \mBreak | % 177%}
}

orgelRHNotenGloriaGounodDVE = \tempTranspose \relative c' {
  \globalGloriaGounodDVE
  <<
    \orgelRHOGloriaGounodDVE
    \new Voice \orgelRHUGloriaGounodDVE
  >>

}


orgelLHOGloriaGounodDVE = \relative c {
  <c g' c>2. r4 |
  <c' e>2 <c e>2 |
  \oneVoice 
  <c e>4 <g d'>4 <a c>4 <e b'>4 |
  <a c>2 <g d'>2 |
  <c, g' c>4 c4 e4 g4 |
  <c e>2 <c e>2 |
  <c e>4 <g d'>4 <a c>4 b4 | \mBreak 
  <a c>2 ~ <d, a' c>2 |
  <g b>4 g4 ^\> g4 g4 -\! |
  b2 \voiceOne c4 d4 |
  c1 |
  \oneVoice b2 \voiceOne c4 d4 |
  c1 |
  \oneVoice
  c2 <c, g'>2 | \mPageBreak 
  f2 g4 a4 |
  g2 ~ <g, g'>2 |
  <c g'>2. g'4 |
  <c e>2 <g d'>2 |
  <c, g' c>4 g'4 e4 c4 |
  g'2. g4 |
  c4 c,4 e4 g4 | \mBreak 
  c2 <e, b'>2
  \voiceOne
  a4 c4 b4 a4 |
  b2 c2 |
  \oneVoice
  b4 b4 c4 d4 |
  c2 e,2 |
  f4 a4 c4 g4 |
  c,2 d4 e4 | \mBreak 
  f8 [ g8 a8 b8 ] c2 |
  c1 ~ |
  c2. f,4 |
  g2 ~ <g, g'>2 |
  <c c'>4 <c c'>4 <c c'>4 <c c'>4 |
  <c c'>1 ~ |
  \mPageBreak 
  <c c'>4 <c c'>4 <c c'>4 <c c'>4 |
  <c c'>1 ~ |
  <c c'>4 <c c'>4 <c c'>4 <c c'>4 |
  c2 c2 |
  <f, f'>1 ~ |
  <f f'>1 |
  <c c'>1 ~ ^\fermata |
  <c c'>4 r4 r2 \bar "||"
  \mBreak | % 105
  \key f \major f'4 a4 c4 cis4 d4 e4 f8 [ c8 a8 f8 ]
  \voiceOne
  a4 c4 bes4 g4
  \oneVoice
  c2. r4 |
  c1 |
  d4 e4 f4 r4 |
  \mBreak
  bes,2 c4 d4 |
  c4 b4 c4 c,4 ~ |
  bes'1 |
  \voiceOne
  a2 c4 a4 bes4 g4 c2 ~ \mPageBreak c2. g'4 \rest d4 d4 d4 d4 d4 e4 f4
  d4 c2 <c, bes'>2 <f a>2. r4 d4 f4 a4 <d, d'>4 ~ \mBreak d'2. e8 [ d8
  ] <a cis>1 ~ ~ <d, a' cis>2 ~ ~ <d a' d>4 r4
  \oneVoice
  <a' cis>4 <a cis>4 <a
  cis>4 <a cis>4 d2 cis4 d,4 \rest
  a'4 a4 a4 a4 \mBreak
  g4 f8 [ g8
  ] a4 r4 d,4 f4 a4 <d, d'>4 d'2. d,4 \rest c'1 ~ c2. f4 \rest d2 c2
  \voiceOne
  \mPageBreak b4 gis4 a4 d,4 e1
  \oneVoice
  <a, a'>2. a'4 <d, a'>1 <g bes>1 <f c'>1
  \mBreak <bes, f' bes>2. r4 c'2 d4 c4 c2. d,4 \rest d'1 es2 d4 c4 d2.
  d,4 \rest \bar "||"
  \mBreak | % 146
  \key c \major <c g' c>2 <c g' c>2 <c' e>4 <g d'>4 <a c>4 <e b'>4 <a
  c>2 <g d'>2 ~ <c, g' c>4 c4 e4 g4 <c e>4 <g d'>4 <a c>4 b4 a2. a4
  \mPageBreak <d, d'>2. <d d'>4 <b b'>2. <b b'>4 <e b'>2 <c c'>2 d'2 c2
  <g b>2. r4 R1 \mBreak <c, g' c>2. r4 R1 <c g' c>2. <e g>4 <f a>4 <g
  b>4 <a c>4 <b d>4 <c e>2 f,2 g2 ~ <g, g'>2 \mBreak <c g' c>2. r4
  R1 <c g' c>2. r4 R1 <c g' c>2. <e g>4 \mPageBreak <f a>4 <g b>4 <a c>4
  <b d>4 <c e>2 f,2 g2 ~ <g, g'>2 <c g' c>2. r4 <a a'>1 ~ <d a'>2. r4
  <g, g'>1 <c, c'>1 \bar "|."
  \mBreak | % 177
}

orgelLHUGloriaDVE = \relative c {
  \time 4/4  s1*7 \mBreak s2*5 f2 e1 s2 f2 e1 s1 \mPageBreak s1*7 \mBreak
  s1 e4 d2 e4 d1 s1*4 \mBreak s1*6 \mPageBreak s1*8 \bar "||"
  \mBreak | % 105
  \key f \major s1*2
  \voiceTwo
  f2 e2 s1*3 \mBreak s1*3 f2. c4 e4 bes'4 s2
  \mPageBreak s1*6 \mBreak s1*6 \mBreak s1*6 \mPageBreak e,2. f4 e1 ~ s1*4
  \mBreak s1*6 \bar "||"
  \mBreak | % 146
  \key c \major s1*6 \mPageBreak s1*6 \mBreak s1*6 \mBreak s1*5
  \mPageBreak s1*8 \bar "|."
  \mBreak | % 177
}

orgelLHNotenGloriaGounodDVE = \tempTranspose \relative c {
  \globalGloriaGounodDVE
  <<
    \orgelLHOGloriaGounodDVE
    \new Voice \orgelLHUGloriaDVE
  >>

}

orgelPedNotenGloriaGounodDVE = \tempTranspose \relative c {
  \globalGloriaGounodDVE

}

metronomZeileGloriaGounodDVE = \drummode {
}
\include "defGloriaGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "GloriaGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreGloriaGounodDVE
  }
}

\book {
  \bookOutputName "GloriaGounodDVE-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreGloriaGounodDVE
  }
}
%Arbeitspartitur***
