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


globalOSalutarisGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \key f \major \time 4/4 | % 212
  \tempo "Adagio"
  \set Score.currentBarNumber = 212
}

sopranTextOSalutarisGounodDVE = \lyricmode {
  O sa -- lu -- ta -- ris hos
  -- ti -- "a," quae coe -- li pan -- dis os -- ti --
  "um," bel -- la pre -- munt hos -- ti -- li -- "a," bel -- la pre --
  munt hos -- ti -- li -- "a," da ro -- "bur,"  fer au -- xi --
  li -- "um," bel -- la pre -- munt hos -- ti -- li -- "a," da ro --
  "bur," fer au -- xi -- li -- "um." O sa -- lu -- ta -- ris hos
  -- ti -- "a," o sa -- lu -- ta -- ris hos -- ti -- "a."
}

altTextOSalutarisGounodDVE = \lyricmode {
  O sa -- lu -- ta -- ris hos --
  ti -- "a," o sa -- lu -- ta -- ris hos -- ti -- "a," quae coe
  -- li pan -- dis os -- ti -- "um," bel -- la pre -- munt hos
  -- ti -- li -- "a," bel -- la pre -- munt hos -- ti -- li -- "a," da
  ro -- "bur,"  fer au -- xi -- li -- "um," bel -- la pre --
  munt hos -- ti -- li -- "a," da ro -- "bur," fer au -- xi -- li --
  "um." O sa -- lu -- ta -- ris hos -- ti -- "a," o sa -- lu --
  ta -- ris hos -- ti -- "a."
}

sopranNotenOSalutarisGounodDVE = \tempTranspose \relative c'' {
  \globalOSalutarisGounodDVE
  \autoBeamOff
  R1*4 \mBreak | % 216
  a4 ^\p a8 a8 f4 bes4 | % 217
  a4 ( g8. ) g16 a8 r8 bes4 ^\crescMarkup | % 218
  c4 cis4 d4 c8 [ ^\dimMarkup bes8 ] | % 219
  a4.. ^\p a16 g4 r4 \mBreak | \barNumberCheck #220
  g4 g4 a4 a8 a8 | % 221
  a4.. a16 bes4 r4 | % 222
  bes4 ^\crescMarkup bes4 c4 c8 c8 | % 223
  c4.. c16 d8 r8 d4 \mPageBreak | % 224
  d4 c8 [ bes8 ] a4 ^\dimMarkup bes4 | % 225
  a4.. ^\p a16 g4 r4 | % 226
  a4 ^\p a4 bes4 bes8 ^\crescMarkup bes8 | % 227
  b4.. b16 c8 r8 c4 \mBreak | % 228
  cis2 ^\f d4 r4 | % 229
  a4 ^\p a4 g4.. g16 | \barNumberCheck #230
  f2. r4 | % 231
  a4 ^\p a8 ^\< a8 a4 a4 | % 232
  c2 ( -\! ^\> bes4.. ) bes16 \mBreak | % 233
  a2. -\! ^\p r4 | % 234
  f4 ^\pp f8 f8 f4 f4 | % 235
  a2 ( g4.. ) g16 | % 236
  f2. r4 | % 237
  R1 \bar "|."
  \mPageBreak | % 238

}

altNotenOSalutarisGounodDVE = \tempTranspose \relative c' {
  \globalOSalutarisGounodDVE
  \autoBeamOff
  R1*2 | % 214
  f4 ^\p f8 f8 d4 g4 | % 215
  f4 ( e8. ) e16 f4 r4 \mBreak | % 216
  f4 f8 f8 d4 g4 | % 217
  f4 ( e8. ) e16 f8 r8 g4 ^\crescMarkup | % 218
  a4 a4 bes4 a8 [ ^\dimMarkup g8 ] | % 219
  f4.. ^\p f16 e4 r4 \mBreak | \barNumberCheck #220
  e4 e4 fis4 fis8 fis8 | % 221
  fis4.. fis16 g4 r4 | % 222
  g4 ^\crescMarkup g4 a4 a8 a8 | % 223
  a4.. a16 bes8 r8 bes4 \mPageBreak | % 224
  bes4 a8 [ g8 ] f4 ^\dimMarkup g4 | % 225
  f4.. ^\p f16 e4 r4 | % 226
  f4 ^\p f4 g4 g8 ^\crescMarkup g8 | % 227
  gis4.. gis16 a8 r8 a4 \mBreak | % 228
  a2 ^\f bes4 r4 | % 229
  f4 ^\p f4 e4.. e16 | \barNumberCheck #230
  f2. r4 | % 231
  f4 ^\p f8 ^\< f8 f4 f4 | % 232
  a2 ( -\! ^\> g4.. ) g16 -\! \mBreak | % 233
  f2. ^\p r4 | % 234
  f4 ^\pp f8 f8 f4 f4 | % 235
  f2 ( e4.. ) e16 | % 236
  f2. r4 | % 237
  R1 \bar "|."
}

orgelRHOOSalutarisGounodDVE = \relative f' {
  \globalOSalutarisGounodDVE
  \voiceOne
  a2 _\p g8 [ a8 bes8 d8 ] | % 213
  f,4 e4 f4. b8 \rest | % 214
  c,4 cis4 d4 g4 | % 215
  f4 e4 f8 [ a,8 c8 f8 ] \mBreak | % 216
  a2 <d, f>4 <g bes>4 | % 217
  <f a>4 <e g>4 <f a>4 <g bes>4 _\markup{
    \bold\small\italic {cresc.}
  } | % 218
  c4 cis4 <bes d>4 <a c>8 [ _\dimMarkup <g
  bes>8 ] | % 219
  <f a>2 _\p <e g>4 r4 \mBreak | \barNumberCheck #220
  <e g>2 <d fis a>2 ~ ~ ~ | % 221
  <d fis a>2 ~ <d g bes>4 r4 | % 222
  <g bes>2 _\crescMarkup <f a c>2 ~ ~ ~ | % 223
  <f a c>2 ~ <f bes d>8 r8 <d bes' d>4 ~ ~ \mPageBreak | % 224
  <bes' d>4 <a c>8 [ <g bes>8 ] <f a>4 _\markup{
    \bold\small\italic
    {dim.}
  } <d g bes>4 | % 225
  <f a>2 _\p <e g>4 r4 | % 226
  <f a>2 _\p <g bes>2 _\crescMarkup | % 227
  <gis b>2 <a c>2 ~ \mBreak | % 228
  <a cis>2 _\f <bes d>4 b4 \rest | % 229
  <f a>2 _\p <e g>2 | \barNumberCheck #230
  <c f>2. r4 | % 231
  <f a>1 ~ _\p | % 232
  <f a c>2 _\> <e g bes>2 \mBreak | % 233
  <f a>2. -\! _\p r4 | % 234
  f1 _\pp | % 235
  <f a>2 <bes, e g>2 | % 236
  <a c f>1 ~ ~ ~ | % 237
  <a c f>2. r4 \bar "|."
  \mPageBreak | % 238
}

orgelRHUOSalutarisGounodDVE = \relative f' {
  \globalOSalutarisGounodDVE
  \voiceTwo
  c4 cis4 d2 c2 ~ c4. b'8 \rest s2 d,2 c2 ~ c8
  s4. \mBreak c4 cis4 s1. a'2 s2 s1 |
  \mBreak s1*4 \mPageBreak e2 s2*5 f1 ~
  \mBreak
  f2. b4 \rest |
  c,1 ~ s1*3 \mBreak s1 c2 d2 c1 ~ s1*2 \bar "|."
  \mPageBreak | % 238
}

orgelRHNotenOSalutarisGounodDVE = \tempTranspose \relative c' {
  \globalOSalutarisGounodDVE
  <<
    \orgelRHOOSalutarisGounodDVE
    \new Voice \orgelRHUOSalutarisGounodDVE
  >>

}

orgelLHOOSalutarisGounodDVE = \relative g {
  \globalOSalutarisGounodDVE
  \voiceOne
  a2 bes4 g4 a4 <g bes>4 a4. d,8 \rest a'2 f4
  bes4 a4 g4 a8 d,8 \rest d4 \rest \mBreak <f a>2 <bes, bes'>4 <bes' d>4
  c2 ~ c4 d,4 \rest f'2. d4 c4 b4 c8 [ c,8 e8 g8 ] \mBreak c2 ~ <a c>2
  ~ <g c>2 ~ <g bes>8 [ g8 bes8 d8 ] es2 ~ <c es>2 ~ <bes es>2 ~ <bes
  d>8 r8 <bes, bes'>4 \mPageBreak <c c'>2 <d d'>4 <bes bes'>4 c'4 b4
  c4 d,4 \rest c'2 \rest e2 d2 c2 \mBreak es2 d4 d,4 \rest a'2 \rest
  bes2 <f a>2. r4 r2 d'2 ^\< c1 -\! \mBreak d2. r4 f,1 c1 f,4 f'4 c4 a4
  <f f'>2. r4 \bar "|."
  \mPageBreak | % 238
}

orgelLHUOSalutarisGounodDVE = \relative g {
  \globalOSalutarisGounodDVE
  \voiceTwo
  f2 bes,2 c2 f4. d8 \rest f2 bes,2 c2 f8 d8
  \rest d4 \rest \mBreak s1 c'4 c,4 f4 d4 \rest f2 bes2 s1 \mBreak s1*4
  \mPageBreak s1 c,2. d4 \rest f1 ~ f1 ~ \mBreak f2 bes4 d,4 \rest c1
  s1*3 \mBreak s1 a2 bes2 s1*3 \bar "|."
  \mPageBreak | % 238
}

orgelLHNotenOSalutarisGounodDVE = \tempTranspose \relative c {
  \globalOSalutarisGounodDVE
  <<
    \orgelLHOOSalutarisGounodDVE
    \new Voice \orgelLHUOSalutarisGounodDVE
  >>

}

orgelPedNotenOSalutarisGounodDVE = \tempTranspose \relative c {
  \globalOSalutarisGounodDVE

}

metronomZeileOSalutarisGounodDVE = \drummode {
}
\include "defOSalutarisGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "OSalutarisGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreOSalutarisGounodDVE
  }
}

\book {
  \bookOutputName "OSalutarisGounodDVE-midi"
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
    \scoreOSalutarisGounodDVE
  }
}
%Arbeitspartitur***
