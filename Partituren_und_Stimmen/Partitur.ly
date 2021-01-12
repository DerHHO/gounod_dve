\version "2.18.2"
#(ly:set-option 'relative-includes #t)
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

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




\book {
  \bookOutputName "Partitur"
  \paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1.3\cm
short-indent = 5\mm
print-all-headers = ##f
#(include-special-characters)

	
}
  \header {
    title = \titel
    subsubtitle = \untertitel
    dedication = \widmung
    composer = \komponist
    poet = \herausgeber
    arranger = \arrangeur
    tagline = \schlusszeile
    instrument = "Partitur (C)"
  }


  \score {
    \header {
      piece = \markup { \larger \larger \larger { Kyrie } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreKyrieGounodDVE

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \score {
    \header {
      piece = \markup { \larger \larger \larger { Gloria } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreGloriaGounodDVE

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  
  \score {
    \header {
      piece = \markup { \larger \larger \larger { Benedictus } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreBenedictusGounodDVE

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \score {
    \header {
      piece = \markup { \larger \larger \larger { O salutaris hostia } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreOSalutarisGounodDVE

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \score {
    \header {
      piece = \markup { \larger \larger \larger { Agnus Dei } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreAgnusGounodDVE

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }



}