\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"
\include "../Noten/mBreak.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




globalSanctusGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \tempo "Andante"
  \key c\major
  \time 4/4
  \set Score.currentBarNumber = 177
}



vorspielpausenSanctusGounodDVE = {

}

sopranTextSanctusGounodDVE = \lyricmode {
  Sanc -- "tus," Sanc -- "tus," Sanc -- tus Do
  -- mi -- nus De -- us Sa -- ba -- "oth," Sanc -- "tus," Sanc
  -- "tus," Sanc -- tus Do -- mi -- nus De -- us Sa -- ba --
  "oth." Ple -- ni sunt coe -- li et ter -- ra glo -- ri -- a Tu --
  "a," ple -- ni sunt coe -- li et ter -- ra glo -- ri -- a Tu -- "a."
  Ho -- san -- "na," ho -- san -- "na," ho -- san -- na in ex -- cel
  -- "sis," ho -- san -- "na," ho -- san -- "na," ho -- san -- na in
  ex -- cel -- "sis." 
}

altTextSanctusGounodDVE = \lyricmode {
  Sanc -- "tus," Sanc -- "tus," Sanc -- tus Do --
  mi -- nus De -- us Sa -- ba -- "oth," Sanc -- "tus," Sanc --
  "tus," Sanc -- tus Do -- mi -- nus De -- us Sa -- ba -- "oth."
  Ple -- ni sunt coe -- li et ter -- ra glo -- ri -- a Tu -- "a." Ho
  -- san -- "na," ho -- san -- "na," ho -- san -- na in ex -- cel --
  "sis," ho -- san -- "na," ho -- san -- "na," ho -- san -- na in ex
  -- cel -- "sis." 
}

sopranNotenSanctusGounodDVE = \tempTranspose \relative g' {
  \globalSanctusGounodDVE
  \time 4/4  | % 177
  R1 
  g2^\f g4 r4 | % 179
  c2 c4 r4 | \barNumberCheck #180
  e2 d2 | % 181
  c4.. c16 c2 | % 182
  a2 d2 | % 183
  c2 ( b4.. ) b16 \mBreak | % 184
  c2. r4 | % 185
  g2 g4 r4 | % 186
  c2 c4 r4 | % 187
  e2 d2 | % 188
  c4.. c16 c2 | % 189
  b2 c2 | \barNumberCheck #190
  b2 ( a4.. ) a16 \mPageBreak | % 191
  g2. r4 | % 192
  g2 ^\f g4 g4 | % 193
  a2 a4 a4 | % 194
  b2 b2 | % 195
  c4. c8 c2 | % 196
  c2 b4 r4 | % 197
  b2 b4 b4 \mBreak | % 198
  c2 c4 c4 | % 199
  d2 d2 | \barNumberCheck #200
  e4.. e16 e2 | % 201
  e2 d4 r8. g,16 | % 202
  g2 e4 r8. c'16 | % 203
  c2 g4 r8. e'16 | % 204
  e4 d4 c4 b4 \mBreak | % 205
  a2 g4 r8. c16 | % 206
  c2 b4 r8. d16 | % 207
  d2 c4 r8. c16 | % 208
  c4 f4 e4 d4 | % 209
  e2 ( d2 ) | \barNumberCheck #210
  c1 ~ | % 211
  c4 r4 r2 \bar "|."
  \mPageBreak | % 212
}

altNotenSanctusGounodDVE = \tempTranspose \relative c' {
  \globalSanctusGounodDVE
  \time 4/4  | % 177
  R1 | % 178
  e2 ^\f e4 r4 | % 179
  e2 e4 r4 | \barNumberCheck #180
  g2 f2 | % 181
  e4.. e16 e2 | % 182
  f2 f2 | % 183
  e2 ( d4.. ) d16 \mBreak | % 184
  c2. r4 | % 185
  e2 e4 r4 | % 186
  e2 e4 r4 | % 187
  g2 f2 | % 188
  e4.. e16 fis2 | % 189
  g2 a2 | \barNumberCheck #190
  g2 ( fis4.. ) fis16 \mPageBreak | % 191
  g2. r4 | % 192
  R1*5 | % 197
  g2 ^\f g4 g4 \mBreak | % 198
  a2 a4 a4 | % 199
  b2 b2 | \barNumberCheck #200
  c4.. c16 c2 | % 201
  c2 b4 r8. g16 | % 202
  e2 c4 r8. e16 | % 203
  e2 e4 r8. c'16 | % 204
  c4 b4 a4 g4 \mBreak | % 205
  f2 e4 r8. e16 | % 206
  e2 d4 r8. f16 | % 207
  f2 e4 r8. a16 | % 208
  a4 f4 g4 a4 | % 209
  g2 ( f2 ) | \barNumberCheck #210
  e1 ~ | % 211
  e4 r4 r2 \bar "|."
  \mPageBreak | % 212
}

orgelRHOSanctusGounodDVE = \relative g' {
  \time 4/4  | % 177
  <e g c>2. _\f r4 | % 178
  <e g>1 | % 179
  <e c'>1 | \barNumberCheck #180
  <g e'>2 <f d'>2 | % 181
  <e c'>2 <e c'>2 | % 182
  <f a>2 <f d'>2 | % 183
  <e c'>2 <f b>2 \mBreak | % 184
  e2. r4 | % 185
  <e g>1 | % 186
  <e c'>1 | % 187
  <g e'>2 <f d'>2 | % 188
  <e c'>2 <fis c'>2 | % 189
  <g b>2 <e a c>2 | \barNumberCheck #190
  <g b>2 <fis a>2 \mPageBreak | % 191
  <d g>2. r4 | % 192
  <d g>1 | % 193
  <e a>1 | % 194
  <f b>1 | % 195
  \voiceOne c'1 ~ | % 196
  c2 b2 | % 197
  b1 \mBreak | % 198
  <a c>1 | % 199
  <b d>1 | \barNumberCheck #200
  <c e>1 ~ ~ | % 201
  <c e>2 <b d>4 b4 \rest | % 202
  \oneVoice <e, g>2 <c e>4 r4 | % 203
  <e c'>2 ~ <e g>4 r4 | % 204
  \voiceOne <c' e>4 <b d>4 <a c>4 <g b>4 \mBreak | % 205
  <f a>2 <e g>4 b'4 \rest | % 206
  \oneVoice <g c>2 ~ <g b>4 r4 | % 207
  <f d'>2 <e c'>4 r4 | % 208
  <a c>4 <f f'>4 <g e'>4 <a d>4 | % 209
  \voiceOne e'2 <f, d'>2 | \barNumberCheck #210
  \oneVoice <e g c>1 ~ ~ ~ | % 211
  <e g c>4 r4 r2 \bar "|."
  \mPageBreak | % 212
}

orgelRHUSanctusGounodDVE = \relative c' {
  \time 4/4  s1*7 \mBreak s1*6 d1 \mPageBreak s1*4 
  \voiceTwo g2 <fis a>2 g1 g1 ~
  \mBreak g1 ~ g1 ~ g2 <fis a>2 g2. b4 \rest s1*2 e,4 d4 c2 ~ \mBreak c2.
  b'4 \rest s1*3 g1 s1*2 \bar "|."
  \mPageBreak | % 212
}

orgelRHNotenSanctusGounodDVE = \tempTranspose \relative c' {
  \globalSanctusGounodDVE
  <<
    \orgelRHOSanctusGounodDVE
    \new Voice \orgelRHUSanctusGounodDVE
  >>
}

orgelLHOSanctusGounodDVE = \relative c, {
  \time 4/4  <c c'>2. r4 c''1 <a c>1 <e c'>2 <g b>2 <a c>2 <g bes c>2
  <f a c>2 <d a' d>2
  \voiceOne c'2 d2 |
  \mBreak
  \oneVoice
  <c, g' c>2. r4 c'1 <a c>1 <e c'>2
  <g b>2 <a c>2 <dis, a'>2 <e g>2 <c a'>2 b'2 c2 \mPageBreak <g b>2. r4
  \voiceOne
  b1 c1 d1 e2 d2 ~ d1 d1 \mBreak e1 <d f>1 <c e>1 ~ ~ <c e>2 <b d>4 d,4
  \rest <c g'>2. r4 <c g' c>2. r4 c'4 b4 a4 <g b>4 \mBreak <f a>2 <e g>4
  d4
  \rest
  \oneVoice
  <g e'>2 ~ <g d'>4 r4 <g b>2 <a c>4 r4 \voiceOne c1 ~ c2 b2
  \oneVoice
  <c, g' c>1
  ~ ~ ~ <c g' c>4 r4 r2 \bar "|."
  \mPageBreak | % 212
}

orgelLHUSanctusGounodDVE = \relative g {
  \time 4/4  s1*6 g1 \mBreak s1*6 d1 \mPageBreak s1
  \voiceTwo g1 ~ g1 ~ g1 ~ g1 ~
  g1 g1 ~ \mBreak g1 ~ g1 ~ g1 ~ g2. d4 \rest s1*2 c1 ~ \mBreak c2. d4
  \rest s1*2 f4 d4 e4 f4 g1 ~ s1*2 \bar "|."
  \mPageBreak | % 212
}

orgelLHNotenSanctusGounodDVE = \tempTranspose \relative c {
  \globalSanctusGounodDVE
  <<
    \orgelLHOSanctusGounodDVE
    \new Voice \orgelLHUSanctusGounodDVE
  >>
}

orgelPedNotenSanctusGounodDVE = \tempTranspose \relative c {
  \globalSanctusGounodDVE

}

metronomZeileSanctusGounodDVE = \drummode {
}
\include "defSanctusGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "SanctusGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreSanctusGounodDVE
  }
}

\book {
  \bookOutputName "SanctusGounodDVE-midi"
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
    \scoreSanctusGounodDVE
  }
}
%Arbeitspartitur***
