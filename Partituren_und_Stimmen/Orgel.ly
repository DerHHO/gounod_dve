\version "2.18.2"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 16.5)
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

tempTranspose = #(define-music-function (parser location music)
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
  qrcode = \orgelQRGounodDVE
  beistrichkomponist = \beistrichKomponistGounodDVE
  beistrichuntertitel = \beistrichUntertitelGounodDVE
  copyright = \copyrightGounodDVE
}

\book {
  \bookOutputName "Orgel"
  \header {
    instrument = "Orgel"
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
    \compressFullBarRests
    \transpose c c \orgelsystemKyrieGounodDVE 
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
    \compressFullBarRests
    \transpose c c \orgelsystemGloriaGounodDVE 
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
    \compressFullBarRests
    \transpose c c \orgelsystemSanctusGounodDVE 
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
    \compressFullBarRests
    \transpose c c \orgelsystemBenedictusGounodDVE 
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
    \compressFullBarRests
    \transpose c c \orgelsystemOSalutarisGounodDVE 
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
    \compressFullBarRests
    \transpose c c \orgelsystemAgnusGounodDVE 
  }
}
  \paper {  
    	indent = 0\cm
	short-indent = 0\cm

    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1\cm
first-page-number = 2
indent = 0\cm
#(include-special-characters)
#(define page-breaking ly:page-turn-breaking)

	
}
}