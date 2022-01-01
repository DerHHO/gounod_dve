\version "2.22.0"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

\include "../Noten/KyrieGounodDVE_Noten.ly"
\include "../Noten/GloriaGounodDVE_Noten.ly"
\include "../Noten/SanctusGounodDVE_Noten.ly"
\include "../Noten/BenedictusGounodDVE_Noten.ly"
\include "../Noten/OSalutarisGounodDVE_Noten.ly"
\include "../Noten/AgnusGounodDVE_Noten.ly"


\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 




\header {
  title = \titel
  subtitle = \untertitel
  dedication = \widmung
  composer = \komponist
  poet = \herausgeber
  arranger = \arrangeur
  tagline = \schlusszeile
  archivnummer = \archivNummerGounodDVE
  qrcode = \chorpartiturQRGounodDVE
  beistrichkomponist = \beistrichKomponistGounodDVE
  beistrichuntertitel = \beistrichUntertitelGounodDVE
  copyright = \copyrightGounodDVE
}

\book {
  \bookOutputName "Chorpartitur"
  \header {
    instrument = "Chorpartitur"
  }
  

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Kyrie } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturKyrieGounodDVE 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Gloria } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturGloriaGounodDVE 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Sanctus } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturSanctusGounodDVE 
  }
}

\score {
  \header {
    piece = \benedictushinweis
    %\markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Benedictus } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturBenedictusGounodDVE 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { O salutaris hostia } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturOSalutarisGounodDVE 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Agnus Dei } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressEmptyMeasures
    \transpose c c \chorpartiturAgnusGounodDVE 
  }
}
  \paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1\cm
two-sided = ##f
inner-margin = 1\cm
outer-margin = 1\cm
first-page-number = 2
#(include-special-characters)

	
}
}