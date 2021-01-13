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



globalKyrieGounodDVE = {
  \taktstil
  \accidentalStyle modern-voice
  \key c\major
  \tempo "Moderato"
  \time 4/4
}

vorspielpausenKyrieGounodDVE = {

}

sopranTextKyrieGounodDVE = \lyricmode {
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, 
  Ky -- ri -- e, 
  Ky -- ri -- e e -- le -- i -- son. 
  Chri -- ste e -- le -- i -- son, 
  Chri -- ste e -- le -- i -- son, 
  e -- le -- i -- son, e -- le -- i -- son, 
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son, 
  e -- le -- i -- son. 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, Ky -- ri -- e, 
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son, e -- le -- i -- son, 
  e -- le -- i -- son, e -- le -- i -- son, 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son.
}



sopranNotenKyrieGounodDVE = \tempTranspose \relative c' {
  \globalKyrieGounodDVE
  \autoBeamOff
  R1*7 \mBreak | % 8
  R1*2  | \barNumberCheck #10
  e4. e8 e4 e4 | % 11
  d4. d8 c4 a'4 | % 12
  g2 ( f4. ) f8 | % 13
  e2. r4 \mBreak | % 14
  g4. g8 g4 g4 | % 15
  f4. f8 e4 c'4 | % 16
  b2 ( a4. ) a8 | % 17
  g2. r4 | % 18
  e'4. d8 c4 r4 | % 19
  b4. a8 g4 a4 \mPageBreak | \barNumberCheck #20
  e2 d2 | % 21
  c2. r4 | % 22
  R1*2 | % 24
  c'2 a4 e'4 | % 25
  e4. d8 c4 r4 \mBreak | % 26
  d4. ( c8 ) b4 b4 | % 27
  d4. c8 b4 b4 | % 28
  e4 d4 c4 d4 | % 29
  c4. c8 b4 r4 | \barNumberCheck #30
  R1*2 \mBreak | % 32
  c2 a4 e'4 | % 33
  e4. d8 c4 r4 | % 34
  c4. ( b8 ) a4 e'4 | % 35
  d4. c8 b4 a8 [ c8 ] | % 36
  b2 a2 | % 37
  g2. r4 \mPageBreak | % 38
  e4. e8 e4 e4 | % 39
  d4. d8 c4 a'4 | \barNumberCheck #40
  g2 ( f4. ) f8 | % 41
  e2. r4 | % 42
  g4. g8 g4 g4 | % 43
  f4. f8 e4 c'4 \mBreak | % 44
  b2 ( a4. ) a8 | % 45
  g2. r4 | % 46
  e'4. d8 c4 r4 | % 47
  b4. a8 g4 a4 | % 48
  e2 d2 | % 49
  c2 ~ c8 r8 c'4 \mBreak | \barNumberCheck #50
  bes2. bes4 | % 51
  a4 r4 r4 a4 | % 52
  d4 ( b4 ) a4 ( g4 ) | % 53
  g4 r4 r4 c4 | % 54
  bes2. bes4 | % 55
  a4 r4 r4 a4 \mPageBreak | % 56
  b2 ( a4 ) g4 | % 57
  c4 r4 r2 | % 58
  a4. a8 a4 a4 | % 59
  a4. a8 a8 r8 a4 | \barNumberCheck #60
  as2. as4 | % 61
  g1 ~ | % 62
  g4 r4 r2 \bar "|."
}

altNotenKyrieGounodDVE = \tempTranspose \relative c' {
  \globalKyrieGounodDVE
  \autoBeamOff
  R1*7 \mBreak | % 8
  R1*6 \mBreak | % 14
  e4. e8 e4 e4 | % 15
  d4. d8 c4 a'4 | % 16
  g2 ( f4. ) f8 | % 17
  e2. r4 | % 18
  c'4. b8 a4 r4 | % 19
  g4. f8 e4 f4 \mPageBreak | \barNumberCheck #20
  c2 b2 | % 21
  c2. r4 | % 22
  R1*2 | % 24
  a'2 e4 c'4 | % 25
  c4. b8 a4 r4 \mBreak | % 26
  b4. ( a8 ) gis4 gis4 | % 27
  b4. a8 gis4 gis4 | % 28
  c4 b4 a4 b4 | % 29
  a4. a8 gis4 r4 | \barNumberCheck #30
  a2 e4 c'4 | % 31
  c4. b8 a4 r4 \mBreak | % 32
  a2 e4 c'4 | % 33
  c4. b8 a4 r4 | % 34
  a4. ( g8 ) fis4 c'4 | % 35
  b4. a8 g4 a4 | % 36
  g2 fis2 | % 37
  g2. r4 \mPageBreak | % 38
  R1*4 | % 42
  e4. e8 e4 e4 | % 43
  d4. d8 c4 a'4 \mBreak | % 44
  g2 ( f4. ) f8 | % 45
  e2. r4 | % 46
  c'4. b8 a4 r4 | % 47
  g4. f8 e4 f4 | % 48
  c2 b2 | % 49
  c2 ~ c8 r8 c4 \mBreak | \barNumberCheck #50
  g'2. g4 | % 51
  f4 r4 r4 f4 | % 52
  f2. f4 | % 53
  e4 r4 r4 c4 | % 54
  g'2. g4 | % 55
  f4 r4 r4 f4 \mPageBreak | % 56
  f2. f4 | % 57
  e4 r4 r2 | % 58
  f4. f8 f4 f4 | % 59
  f4. f8 f8 r8 f4 | \barNumberCheck #60
  f2. f4 | % 61
  e1 ~ | % 62
  e4 r4 r2 \bar "|."
}

altTextKyrieGounodDVE = \lyricmode {
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, 
  Ky -- ri -- e, Ky -- ri -- e e -- le -- i -- son. 
  Chri -- ste e -- le -- i -- son, 
  Chri -- ste e -- le -- i -- son, 
  e -- le -- i -- son, e -- le -- i -- son, 
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son, 
  Chri -- ste e -- le -- i -- son, 
  e -- le -- i -- son. 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son, Ky -- ri -- e, 
  Ky -- ri -- e e -- le -- i -- son,  
  e -- le -- i -- son, e -- le -- i -- son, 
  e -- le -- i -- son, 
  e -- le -- i -- son, 
  Ky -- ri -- e e -- le -- i -- son, 
  e -- le -- i -- son.
}

orgelRHOKyrieGounodDVE = \relative e' {
  \clef "treble" \key c \major \time 4/4 | % 1
  <e c'>2 <g e'>4 <f d'>4 | % 2
  <e c'>2 <d b'>4 r4 | % 3
  <f d'>2 <a f'>4 <g e'>4 | % 4
  <f d'>2 <e c'>4 r4 | % 5
  <c' a'>2. <bes g'>4 | % 6
  \voiceOne
  g'2 f4 d4 | % 7
  c4 b4 c4 a4 \mBreak | % 8
  g4 a4 b4 d4 | % 9
  \oneVoice
  <e, c'>2. r4 | \barNumberCheck #10
  e1 | % 11
  d2 c4 a'4 | % 12
  <c, g'>2 <d f>2 | % 13
  <c e>4 g4 c4 e4 \mBreak | % 14
  <e g>1 | % 15
  <d f>2 <c e>4 <a' c>4 | % 16
  <g b>2 <f a>2 | % 17
  <e g>4 <c e>4 <e g>4 <g c>4 | % 18
  <c e>4. <b d>8 <a c>4 r4 | % 19
  <g b>4. <f a>8 <e g>4 <f a>4 \mPageBreak | \barNumberCheck #20
  <c e>2 <b d>2 | % 21
  c2. r4 | % 22
  <c a'>2 e4 <e c'>4 | % 23
  <e c'>4. <d b'>8 <c a'>8 [ c8 e8 a8 ] | % 24
  <a c>2 <e a>4 <c' e>4 | % 25
  \voiceOne
  <c e>4. <b d>8 <a c>8 [ e8 a8 c8 ] \mBreak | % 26
  \oneVoice
  <b d>4. <a c>8 <gis b>2 | % 27
  <b d>4. <a c>8 <gis b>2 | % 28
  <c e>4 <b d>4 <a c>4 <b d>4 | % 29
  <a c>2 <gis b>4 r4 | \barNumberCheck #30
  <c, a'>2 e4 <e c'>4 | % 31
  <e c'>4. <d b'>8 <c a'>8 [ c8 e8 a8 ] \mBreak | % 32
  <a c>2 <e a>4 <c' e>4 | % 33
  \voiceOne
  <c e>4. <b d>8 <a c>4 \oneVoice r4  | % 34
  <a c>4. <g b>8 <fis a>4 <c' e>4 | % 35
  <b d>4. <a c>8 <g b>4 a8 [ c8 ] | % 36
  <g b>2 <fis a>2 | % 37
  g4 <g, g'>4 <a fis'>4 <b f'>4 \mPageBreak | % 38
  <c e>1 | % 39
  <b d>2 c4 a'4 | \barNumberCheck #40
  <c, g'>2 <d f>2 | % 41
  <c e>4 g4 c4 e4 | % 42
  <e g>1 | % 43
  <d f>2 <c e>4 <a' c>4 \mBreak | % 44
  <g b>2 <f a>2 | % 45
  <e g>4 <c e>4 <e g>4 <g c>4 | % 46
  <c e>4. <b d>8 <a c>4 r4 | % 47
  <g b>4. <f a>8 <e g>4 <f a>4 | % 48
  <c e>2 <b d>2 | % 49
  c4 r4 r4 c'4 \mBreak | \barNumberCheck #50
  <g bes>1 | % 51
  a1 | % 52
  \voiceOne
  d4 b4 a4 g4 | % 53
  \oneVoice
  <e g>2. c'4 | % 54
  <g bes>1 | % 55
  a1 \mPageBreak | % 56
  \voiceOne
  b2 a4 g4 | % 57
  \oneVoice
  <e c'>2. r4 | % 58
  <f a>2. r4 | % 59
  <f a>2. r4 | \barNumberCheck #60
  <d f as>1 | % 61
  <e g>1 ~ ~ | % 62
  <e g>4 r4 r2 \bar "|."
  \mBreak | % 63
}

orgelRHUKyrieGounodDVE = \relative g' {
  \globalKyrieGounodDVE
  \voiceTwo
  s1*5
  bes2 a2 g2 e2 \mBreak f1
  s1
  c1
  b2 c2 ~
  c2 s2 |
  s1 \mBreak s1*6
  \mPageBreak
  s1*5
  e2 ~ e8 s4. \mBreak
  s1*6 \mBreak
  s1 e2. s4 s4*7 e4
  s1*2 \mPageBreak
  s1 |
  s2 c2 ~ |
  c2 s2 |
  s1*3
  \mBreak s1*6 \mBreak s1 f1 ~ f1 s1*2
  f1~ \mPageBreak <d f>1 s1*6 \bar "|."
  \mBreak | % 63
}

orgelRHNotenKyrieGounodDVE = \tempTranspose \relative c' {
  \globalKyrieGounodDVE
  <<
    \orgelRHOKyrieGounodDVE
    \new Voice \orgelRHUKyrieGounodDVE
  >>
}

orgelLHOKyrieGounodDVE = \relative c {
  \clef "bass"
  \globalKyrieGounodDVE
  \voiceOne
  <c g'>1 ~ |
  <g g'>2. \oneVoice r4 |
  <g' b>1 ~ |
  <gis b>2 <a c>4 \oneVoice r4 |
  \voiceOne
  c1 ~ |
  c4 cis4 d4 f4 |
  e4 d4 c2 | \mBreak
  b4 c4 d4 b4 |
  \oneVoice <c, g' c>2. r4 |
  \voiceOne c4 e4 a4 g4 ~ |
  g4 f4 e2 d4 a'4 b4 g4 ~
  <c, g'>4 \oneVoice r4 r2 \voiceOne
  \mBreak c4 e4 g4 c4 a4 b4 c4 e,4 f4 g4 a4 b4
  \oneVoice
  <c, c'>4 r4 r2 <a c>4 <c
  e>4 <e a>4 <a c>4 <b d>2 c4 <f, c'>4 \mPageBreak g2 ~ <g, f' g>2
  ~ <c e g>2. r4 a'4 e4 c4 a4 e'4 fis8 [ gis8 ] a4 r4 a4 e4 c4 a4 e'4
  fis8 [ gis8 ] a4 r4 \mBreak d4 e4 f4 e4 d4 e4 f4 e8 [ d8 ] c4 d8 [ e8
  ] f4 d4 e4 dis4 e4 e,4 a4 e4 c4 a4 e'4 fis8 [ gis8 ] a4 r4 \mBreak a4
  e4 c4 a4 e'4 fis8 [ gis8 ] a4 b8 [ c8 ] d4 d,4 ~ d8 [ d'8 e8 fis8 ]
  g4 d4 e4 c4 d2 <d, c'>2 <g b>4 r4 r2 \mPageBreak
  \voiceOne
  c,4 e4 a4 g4 ~ g4 f4
  e2 d4 a'4 b4 g4 ~ <c, g'>4
  \oneVoice
  r4 r2
  \voiceOne
  c4 e4 g4 c4 a4 b4 c4 e,4 \mBreak 
  f4 g4 a4 b4 |
  c4 \oneVoice r4 r2 |
  <a, c>4 <c e>4 <e a>4 <a c>4 |
  <b d>2 c4 <f, c'>4
  g2 ~ <g, f' g>2
  \voiceOne
  <e' g>4 c'4 c4 c4 ~ \mBreak
  c4 c4 d,4 e4
  f4 a4 d4 c4
  b4 g4 a4 b4
  c1 ~
  c4 c4 d,4 e4
  f4 c'4 b4 a4 \mPageBreak
  \oneVoice
  g1 ~
  <g c>2. r4
  <f a c>2. r4
  <f a c>2. r4
  <f b>1
  <c g' c>1~
  <c g' c>4 r4 r2 \bar "|."
}

orgelLHUKyrieGounodDVE = \relative g, {
  \clef "bass"
  s1*4
  \voiceTwo
  c4 d4 dis4 e4
  f1
  g1 ~ \mBreak
  g1
  s1
  c,1 ~
  c1 ~
  c1
  s1
  \mBreak
  c1 ~
  c1 ~
  c1 ~ |
  c4 s4 s2 |
  s1*2 \mPageBreak
  s1*6 \mBreak
  s1*6 \mBreak
  s1*6 \mPageBreak
  c1 ~
  c1 ~
  c1
  s1
  c1 ~
  c1 ~
  \mBreak
  c1 ~ |
  c4 s4 s2 |
  s1*3
  c1 \mBreak
  c1 ~
  c1
  c1 ~
  c4 c4 c4 c4
  c1 ~
  c1 ~
  \mPageBreak 
  c~ |
  c2. s4 |
  s1*5 \bar "|."
  \mBreak | % 63
}

orgelLHNotenKyrieGounodDVE = \tempTranspose \relative c {
  \globalKyrieGounodDVE
  <<
    \orgelLHOKyrieGounodDVE
    \new Voice \orgelLHUKyrieGounodDVE
  >>
}

orgelPedNotenKyrieGounodDVE = \tempTranspose \relative c {
  \globalKyrieGounodDVE

}

metronomZeileKyrieGounodDVE = \drummode {
}
\include "defKyrieGounodDVE.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "KyrieGounodDVE-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreKyrieGounodDVE
  }
}

\book {
  \bookOutputName "KyrieGounodDVE-midi"
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
    \scoreKyrieGounodDVE
  }
}
%Arbeitspartitur***
