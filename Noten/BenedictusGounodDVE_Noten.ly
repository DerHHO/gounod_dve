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




globalBenedictusGounodDVE = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenBenedictusGounodDVE = { 
	
}

sopranNotenBenedictusGounodDVE = \tempTranspose \relative c' { 
	 \globalBenedictusGounodDVE
	 
 }

altNotenBenedictusGounodDVE = \tempTranspose \relative c' { 
	 \globalBenedictusGounodDVE
	 
 }

orgelRHNotenBenedictusGounodDVE = \tempTranspose \relative c' { 
	 \globalBenedictusGounodDVE
	 
 }

orgelLHNotenBenedictusGounodDVE = \tempTranspose \relative c { 
	 \globalBenedictusGounodDVE
	 
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
		