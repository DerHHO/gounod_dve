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


mPageBreak = { }
mBreak = { }

globalAgnusGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \set Score.currentBarNumber = 238
  \tempo "Moderato"
  \key c \major \time 4/4 | % 238
}

vorspielpausenAgnusGounodDVE = {

}

sopranTextAgnusGounodDVE = \lyricmode {
  A -- gnus De -- "i," qui tol -- lis pec -- ca -- ta mun --
  "di:" mi -- se -- re -- re no --  "bis," mi -- se -- re
  -- re no --  "bis," mi -- se -- re -- "re," mi -- se
  -- re -- re no -- "bis." A -- gnus De -- "i," qui
  tol -- lis pec -- ca -- ta mun -- "di:" mi -- se -- re -- re no
  --  "bis," mi -- se -- re -- re no -- 
  "bis." A -- gnus De -- "i,"  A -- gnus De -- "i,"
   A -- gnus De -- "i," qui tol -- lis pec -- ca -- ta mun
  -- "di:" do -- na no -- bis pa -- "cem," do -- na no -- bis pa --
  "cem," do -- na no -- bis pa -- "cem," do -- na no
  -- bis pa -- "cem," do -- na no -- bis pa -- "cem." 
}

altTextAgnusGounodDVE = \lyricmode {
  A -- gnus De -- "i," qui tol
  -- lis pec -- ca -- ta mun -- "di:" mi -- se -- re -- re no --
   "bis," mi -- se -- re -- re no --  "bis," mi --
  se -- re -- "re," mi -- se -- re -- re no -- "bis." 
  A -- gnus De -- "i," qui tol -- lis pec -- ca -- ta mun -- "di:"
  mi -- se -- re -- re no --  "bis," mi -- se -- re -- re
  no --  "bis." A -- gnus De -- "i,"  
  A -- gnus De -- "i,"  A -- gnus De -- "i," qui tol --
  lis pec -- ca -- ta mun -- "di:" do -- na no -- bis pa -- "cem," do
  -- na no -- bis pa -- "cem," do -- na no -- bis pa
  -- "cem," do -- na no -- bis pa -- "cem," do -- na no -- bis
  pa -- "cem." 
}

sopranNotenAgnusGounodDVE = \tempTranspose \relative g' {
  \globalAgnusGounodDVE
  \autoBeamOff
  R1*2  | \barNumberCheck
  #240
  g2 ^\p f4 ( e4 ) | % 241
  g2 f4 e4 | % 242
  f4 f8 f8 g4 a4 | % 243
  g2 e4 r4 | % 244
  d4 a'4 g4 f4 \mBreak | % 245
  g4 ( f8 [ e8 ) ] e4 r4 | % 246
  e4 ^\crescMarkup c'4 b4 a4 | % 247 
  b4 ( a8 [ g8 ) ] g4 r4 | % 248

  g4 ^\f e'4 d4 c4 | % 249
  c4\( b8 [ a8\) ] a4 ^\dimMarkup g8 [ f8 ]
  \mBreak | \barNumberCheck #250
  e2 d4 r4 | % 251
  g2 ^\p f4 ( e4 ) | % 252
  g2 f4 e4 | % 253
  f4 f8 f8 g4 a4 | % 254
  g2 e4 r4 | % 255
  g4 ^\crescMarkup d'4 c4 bes4 \mPageBreak | % 256
  c4 ( bes8 [ a8 ) ] a4 r4 | % 257
  a4 ^\crescMarkup e'4 d4 c4 | % 258
  d4 ( c8 [ b8 ) ] b4 r4 | % 259
  d2 ^\f c4 ( b4 ) | \barNumberCheck #260
  c2 b4 ( a4 ) | % 261
  b2 ^\dimMarkup a4 ( g4 ) \mBreak | % 262
  a2 g4 ( f4 ) | % 263
  g2 ^\p f4 ( e4 ) | % 264
  g2 f4 e4 | % 265
  f4 f8 f8 g4 a4 | % 266
  g2 e4 r4 | % 267
  g4 ^\crescMarkup a4 bes4 c4 \mBreak | % 268
  bes2 a4 r4 | % 269
  d,4 ^\dimMarkup e4 f4 g4 | \barNumberCheck
  #270
  f2 e4 r4 | % 271
  g2 ^\p f4 ( e4 ) | % 272
  g2 f4 ( e4 ) | % 273
  e2 ( d2 ) \mPageBreak | % 274
  c2. r4 | % 275
  g'2 ^\p g2 | % 276
  g2 g2 | % 277
  g1 | % 278
  g2. r4 | % 279
  g2 ^\pp g2 \mBreak | \barNumberCheck #280
  g2 g2 | % 281
  g1 | % 282
  c1 ~ | % 283
  c4 r4 r2 | % 284
  R1*4 \bar "|."

}

altNotenAgnusGounodDVE = \tempTranspose \relative c' {
  \globalAgnusGounodDVE
  \autoBeamOff
  R1*2 | \barNumberCheck #240
  e2 ^\p d4 ( c4 ) | % 241
  e2 d4 c4 | % 242
  d4 d8 d8 e4 f4 | % 243
  e2 c4 r4 | % 244
  b4 f'4 e4 d4 \mBreak | % 245
  e4 ( d8 [ c8 ) ] c4 r4 | % 246
  c4 ^\crescMarkup a'4 g4 fis4 | % 247
  g4 ( fis8 [ e8 ) ] e4 r4 | % 248
  e4 ^\f c'4 b4 a4 | % 249
  a4\( g8 [ f8\) ] f4 ^\dimMarkup e8 [ d8 ]
  \mBreak | \barNumberCheck #250
  c2 b4 r4 | % 251
  e2 ^\p d4 ( c4 ) | % 252
  e2 d4 c4 | % 253
  d4 d8 d8 e4 f4 | % 254
  e2 c4 r4 | % 255
  e4 ^\crescMarkup bes'4 a4 g4 \mPageBreak | % 256
  a4 ( g8 [ f8 ) ] f4 r4 | % 257
  fis4 ^\crescMarkup c'4 b4 a4 | % 258
  b4 ( a8 [ g8 ) ] g4 r4 | % 259
  b2 ^\f a4 ( g4 ) | \barNumberCheck #260
  a2 g4 ( f4 ) | % 261
  g2 ^\dimMarkup f4 ( e4 ) \mBreak | % 262
  f2 e4 ( d4 ) | % 263
  e2 ^\p d4 ( c4 ) | % 264
  e2 d4 c4 | % 265
  d4 d8 d8 e4 f4 | % 266
  e2 c4 r4 | % 267
  e4 ^\crescMarkup f4 g4 a4 \mBreak | % 268
  g2 f4 r4 | % 269
  b,4 ^\dimMarkup c4 d4 e4 | \barNumberCheck
  #270
  d2 c4 r4 | % 271
  e2 ^\p d4 ( c4 ) | % 272
  e2 d4 ( c4 ) | % 273
  c2 ( b2 ) \mPageBreak | % 274
  c2. r4 | % 275
  g'2 ^\p g2 | % 276
  g2 g2 | % 277
  g1 | % 278
  g2. r4 | % 279
  g2 ^\pp g2 \mBreak | \barNumberCheck #280
  g2 g2 | % 281
  g1 | % 282
  c,1 ~ | % 283
  c4 r4 r2 | % 284
  R1*4 \bar "|."

}

orgelRHOAgnusGounodDVE = \relative g' {
  <e g>2 _\p <d f>4 <c e>4 | % 239
  <e g>2 <d f>4 <c e>4 | \barNumberCheck #240
  <e g>2 <d f>4 <c e>4 | % 241
  <e g>2 <d f>4 <c e>4 | % 242
  <d f>2 <e g>4 <f a>4 | % 243
  <e g>2 <c e>4 r4 | % 244
  <b d>4 <f' a>4 <e g>4 <d f>4 \mBreak | % 245
  <e g>4 <d f>8 [ <c e>8 ] <c e>2 | % 246
  <c e>4 -\crescMarkup <a' c>4 <g b>4 <fis
  a>4 | % 247
  <g b>4 <fis a>8 [ <e g>8 ] <e g>2 | % 248
  <e g>4 _\f <c' e>4 <b d>4 <a c>4 | % 249
  <a c>4 <g b>8 [ <f a>8 ] <f a>4 _\markup{
    \bold\small\italic {dim.}
  } <e g>8 [ <d f>8 ] \mBreak | \barNumberCheck #250
  <c e>2 <b d>4 r4 | % 251
  <e g>2 _\p <d f>4 <c e>4 | % 252
  <e g>2 <d f>4 <c e>4 | % 253
  <d f>2 <e g>4 <f a>4 | % 254
  <e g>2 <c e>4 r4 | % 255
  <e g>4 -\crescMarkup <bes' d>4 <a c>4 <g
  bes>4 \mPageBreak | % 256
  <a c>4 <g bes>8 [ <f a>8 ] <f a>4 r4 | % 257
  <fis a>4 -\crescMarkup <c' e>4 <b d>4 <a
  c>4 | % 258
  <b d>4 <a c>8 [ <g b>8 ] <g b>4 r4 | % 259
  \voiceOne
  <b d>2 _\f <a c>4 b4 | \barNumberCheck #260
  <a c>2 <g b>4 a4 | % 261
  <g b>2 _\dimMarkup <f a>4 g4 \mBreak | % 262
  <f a>2 <e g>4 f4 | % 263
  <e g>2 _\p <d f>4 e4 | % 264
  <e g>2 <d f>4 e4 | % 265
  <d f>2 <e g>4 <f a>4 | % 266
  <e g>2 <c e>4 \oneVoice r4 | % 267
  \voiceOne <e g>4 -\crescMarkup <f a>4 <g bes>4 <a c>4
  \mBreak | % 268
  <g bes>2 <f a>4 \oneVoice r4 | % 269
  \voiceOne 
  <b, d>4 _\dimMarkup <c e>4 <d f>4 <e g>4 |
  \barNumberCheck #270
  <b d f>2 <c e>4 r4 | % 271
  <e g>2 _\p <d f>4 e4 | % 272
  <e g>2 <d f>4 <c e>4 | % 273
  <c e>2 <b d>2 \mPageBreak | % 274
  c4 ( g'4 e4 c4 ) | % 275
  <g b d>2 <g b d>2 | % 276
  c4 ( g'4 e4 c4 ) | % 277
  <g b d>2 <g b d>2 | % 278
  c4 ( g'4 e4 c4 ) | % 279
  <g b d>2 _\pp <g b d>2 \mBreak | \barNumberCheck #280
  c4 ( g'4 e4 c4 ) | % 281
  <g b d>2 <g b d>2 | % 282
  c2 f2 | % 283
  e2 d2 | % 284
  e2 f2 | % 285
  e2 d2 | % 286
  \oneVoice <g, c e>1~ | % 287
  <g c e>4 r4 r2 \bar "|."
}

orgelRHUAgnusGounodDVE = \relative g' {

  \key c \major \time 4/4 s1*7 \mBreak s1*5 \mBreak s1*6 \mPageBreak s1*3
  \voiceTwo
  d4 e4 f4 g4 c,4 d4 e4 f4 b,4 c4 d4 e4 \mBreak a,4 b4 c4 d4 |
  r4 a4 b4 c4 r4 a4 b4 c4 c1 s1 c2 d4 e4 ~ \mBreak e4 s2. |
  g,2 a4 b4 ~ |
  b2 c4 r |
  r4 a4 b4 c4 s1 g1 ~ |
  \mPageBreak g1 s1
  g1 ~ |
  g2 s2 |
  g1 ~ |
  g2 s2 \mBreak |
  g1~ |
  g2 s2 |
  c1 ~ c1 ~ c1 ~ c1 s1*2 \bar "|."
}

orgelRHNotenAgnusGounodDVE = \tempTranspose \relative c' {
  \globalAgnusGounodDVE
  <<
    \orgelRHOAgnusGounodDVE
    \new Voice \orgelRHUAgnusGounodDVE
  >>

}

orgelLHOAgnusGounodDVE = \relative c {
  \globalAgnusGounodDVE
  <c g'>1 <c g'>1 <c g'>1 <c g'>1
  \voiceOne
  a'2 g4 f4 |
  g2. r4 |
  \oneVoice
  g1 ~ \mBreak <c, g'>2 e4 g4
  \voiceOne
  a2 b4 c4
  \oneVoice <e, b'>2 g4 b4
  \voiceOne
  c1 ~ c2
  a2 \mBreak g2 ~ <g, g'>4 \oneVoice r4
  <c g'>1 <c g'>1
  \voiceOne a'2 g4 f4
  \oneVoice <c g'>4 c4 e4 g4
  \voiceOne c1 ~ \mPageBreak c2. cis4 d1 ~ d1 g,1 ~ g1 ~ g1 ~ \mBreak g1 g1 g1 a2
  g4 f4 g2. d4 \rest bes'4 a4 g4 c4 ~ \mBreak c2. r4 f,4 e4 d4 g4
  a2. d,4 \rest g1 ~ g1 f2 \rest f2 \mPageBreak e1 <c d f>2 <c d f>2 e1
  <c d f>2 <c d f>2 e1 <c d f>2 <c d f>2 \mBreak e1 <c d f>2 <c d f>2 e2
  a2 g2 f2 g2 a2 g2 f2
  \oneVoice
  <c, c'>1 ~ <c c'>4 r4 r2 \bar "|."
}

orgelLHUAgnusGounodDVE = \relative c {
  \voiceTwo
  \globalAgnusGounodDVE
  s1*4 c1 c2. e4 s1 \mBreak s1
  a1 s1 c2 c,2 f1
  \mBreak s1*3 c1 ~
  c4 s2. |
  c'2 c,2 \mPageBreak f2. d4 \rest d'2 d,2 g2 g4 g4
  g,1 ~ g1 ~ g1 ~ \mBreak g1 c1 c1 c1 ~ c2. d4 \rest c1 \mBreak f2. r4 |
  g,1 a2. d4 \rest g,1 ~ g4 a4 b4 c4 g1 \mPageBreak c1 s1 c1 ~ c2 c2
  c1 ~ c2 c \mBreak 
  c1 ~ c2 c |
  c1 ~ c1 ~ c1 ~ c1 s1*2 \bar "|."
}

orgelLHNotenAgnusGounodDVE = \tempTranspose \relative c {
  \globalAgnusGounodDVE
  <<
    \orgelLHOAgnusGounodDVE
    \new Voice \orgelLHUAgnusGounodDVE
  >>

}

orgelPedNotenAgnusGounodDVE = \tempTranspose \relative c {
  \globalAgnusGounodDVE

}

metronomZeileAgnusGounodDVE = \drummode {
}
\include "defAgnusGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "AgnusGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreAgnusGounodDVE
  }
}

\book {
  \bookOutputName "AgnusGounodDVE-midi"
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
    \scoreAgnusGounodDVE
  }
}
%Arbeitspartitur***
