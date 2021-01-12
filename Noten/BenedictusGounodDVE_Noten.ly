\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"
\include "../Noten/OSalutarisGounodDVE_Noten.ly"
\include "../Noten/mBreak.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))


globalBenedictusGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \key f \major \time 4/4 | % 212
  \tempo "Adagio"
  \set Score.currentBarNumber = 212
}


gemeinsamerTextBenedictusGounodDVE = \lyricmode {
  qui ve -- nit in no -- mi -- ne,
  in no -- mi -- ne Do -- mi -- ni.
  
  Be -- ne -- di -- ctus, qui ve -- nit,
  qui ve -- nit in no -- mi -- ne,
  Do -- mi -- ni.
  
  Be -- ne -- di -- ctus, qui ve -- nit,
  qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Be -- ne -- di -- ctus, qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
}

sopranTextBenedictusGounodDVE = \lyricmode {
  Be -- ne -- di -- ctus,
  \gemeinsamerTextBenedictusGounodDVE
}

altTextBenedictusGounodDVE = \lyricmode {
  Be -- ne -- di -- ctus,
  be -- ne -- di -- ctus, 
  \gemeinsamerTextBenedictusGounodDVE
}

sopranNotenBenedictusGounodDVE = \tempTranspose \relative c'' {
  \globalBenedictusGounodDVE
  \autoBeamOff
  R1*4 \mBreak | % 216
  a2 ^\p f4( bes4) | % 217
  a4 ( g ) a8 r8 bes4 ^\crescMarkup | % 218
  c4( cis4) d4 c8 [ ^\dimMarkup bes8 ] | % 219
  a4.. ^\p a16 g4 g \mBreak | \barNumberCheck #220
  g2 a4 a | % 221
  a4.. a16 bes4 r4 | % 222
  bes4 ^\crescMarkup bes4 c4 c8 c8 | % 223
  c2 d8 r8 d4 \mPageBreak | % 224
  d4 c8 bes8 a4 ^\dimMarkup bes8 bes | % 225
  a4.. ^\p a16 g4 r4 | % 226
  a4 ^\p a4 bes4 bes8 ^\crescMarkup bes8 | % 227
  b2 c8 r8 c4 \mBreak | % 228
  cis2 ^\f d4 d | % 229
  a4 ^\p a8 a g4.. g16 | \barNumberCheck #230
  f2. r4 | % 231
  a4 ^\p a^\< a4 a8 a | % 232
  c2 ( -\! ^\> bes2 ) \mBreak | % 233
  a2 -\! ^\p r4 f | % 234
  f2 ^\pp f4 f4 | % 235
  a2 ( g4.. ) g16 | % 236
  f2. r4 | % 237
  R1 \bar "|."
  \mPageBreak | % 238

}

altNotenBenedictusGounodDVE = \tempTranspose \relative c' {
  \globalBenedictusGounodDVE
  \autoBeamOff
  R1*2 | % 214
  f2 ^\p d4( g4) | % 215
  f4 ( e4 ) f4 r4 \mBreak | % 216
  f2 d4( g4) | % 217
  f4 ( e ) f8 r8 g4 ^\crescMarkup | % 218
  a2 bes4 a8 [ ^\dimMarkup g8 ] | % 219
  f4.. ^\p f16 e4 e4 \mBreak | \barNumberCheck #220
  e2 fis4 fis | % 221
  fis4.. fis16 g4 r4 | % 222
  g4 ^\crescMarkup g4 a4 a8 a8 | % 223
  a2 bes8 r8 bes4 \mPageBreak | % 224
  bes4 a8 g8  f4 ^\dimMarkup g8 g | % 225
  f4.. ^\p f16 e4 r4 | % 226
  f4 ^\p f4 g4 g8 ^\crescMarkup g8 | % 227
  gis2 a8 r8 a4 \mBreak | % 228
  a2 ^\f bes4 bes | % 229
  f4 ^\p f8 f e4.. e16 | \barNumberCheck #230
  f2. r4 | % 231
  f4 ^\p f ^\< f4 f8 f | % 232
  a2 ( -\! ^\> g ) -\! \mBreak | % 233
  f2 ^\p r4 f | % 234
  f2 ^\pp f4 f4 | % 235
  f2 ( e4.. ) e16 | % 236
  f2. r4 | % 237
  R1 \bar "|."
}

orgelRHOBenedictusGounodDVE = \relative f' {
  \orgelRHOOSalutarisGounodDVE
}

orgelRHUBenedictusGounodDVE = \relative f' {
  \orgelRHUOSalutarisGounodDVE
}

orgelRHNotenBenedictusGounodDVE = \tempTranspose \relative c' {
  \globalBenedictusGounodDVE
  <<
    \orgelRHOBenedictusGounodDVE
    \new Voice \orgelRHUBenedictusGounodDVE
  >>

}

orgelLHOBenedictusGounodDVE = \relative g {
  \orgelLHOOSalutarisGounodDVE
}

orgelLHUBenedictusGounodDVE = \relative g {
  \orgelLHUOSalutarisGounodDVE
}

orgelLHNotenBenedictusGounodDVE = \tempTranspose \relative c {
  \globalBenedictusGounodDVE
  <<
    \orgelLHOBenedictusGounodDVE
    \new Voice \orgelLHUBenedictusGounodDVE
  >>

}

orgelPedNotenBenedictusGounodDVE = \tempTranspose \relative c {
  \globalBenedictusGounodDVE

}

metronomZeileBenedictusGounodDVE = \drummode {
}
\include "defBenedictusGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "BenedictusGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreBenedictusGounodDVE
  }
}

\book {
  \bookOutputName "BenedictusGounodDVE-midi"
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
    \scoreBenedictusGounodDVE
  }
}
%Arbeitspartitur***
