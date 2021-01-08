
chorpartiturCredoGounodDVE = {
	\new ChoirStaff <<
			<<

		\new Staff \with {
			instrumentName = "Sopran"
			shortInstrumentName = "S"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vsop" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \sopranNotenCredoGounodDVE
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranNotenCredoGounodDVE
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Alt"
			shortInstrumentName = "A"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "valt" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \altNotenCredoGounodDVE
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenCredoGounodDVE
				}
			}
			
		>>
	>>
>>
}
orgelsystemCredoGounodDVE = {
	<<
\new PianoStaff <<
		
	\set PianoStaff.instrumentName = "Orgel"
	\set PianoStaff.shortInstrumentName = "Org."	<<

		\new Staff \with {
			instrumentName = ""
			shortInstrumentName = ""
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vrH" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \orgelRHNotenCredoGounodDVE
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\orgelRHNotenCredoGounodDVE
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = ""
			shortInstrumentName = ""
			midiInstrument = "acoustic grand"
			
\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
		}
			<<
			\new Voice = "valt" {
				\tag #'transponierendepartitur {
					\clef "bass"
					\transpose c c \orgelLHNotenCredoGounodDVE
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\orgelLHNotenCredoGounodDVE
				}
			}
			
		>>

>>
>>


		\new Staff \with {
			instrumentName = ""
			shortInstrumentName = ""
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vPed" {
				\tag #'transponierendepartitur {
					\clef "bass"
					\transpose c c \orgelPedNotenCredoGounodDVE
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\orgelPedNotenCredoGounodDVE
				}
			}
			
		>>
	>>

}

scoreCredoGounodDVE = {	<<\chorpartiturCredoGounodDVE
\orgelsystemCredoGounodDVE
	>>
}