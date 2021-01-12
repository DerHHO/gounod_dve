
chorpartiturOSalutarisGounodDVE = {
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
            \transpose c c \sopranNotenOSalutarisGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenOSalutarisGounodDVE
          }
        }
        \addlyrics \sopranTextOSalutarisGounodDVE

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
            \transpose c c \altNotenOSalutarisGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenOSalutarisGounodDVE
          }
        }
        \addlyrics \altTextOSalutarisGounodDVE
      >>
    >>
  >>
}
orgelsystemOSalutarisGounodDVE = {
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
              \transpose c c \orgelRHNotenOSalutarisGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenOSalutarisGounodDVE
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          %\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "valt" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenOSalutarisGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenOSalutarisGounodDVE
            }
          }

        >>

      >>
    >>


    %{\new Staff \with {
      instrumentName = ""
      shortInstrumentName = ""
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vPed" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \orgelPedNotenOSalutarisGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenOSalutarisGounodDVE
        }
      }

    >>%}
  >>

}

scoreOSalutarisGounodDVE = {
  <<
    \chorpartiturOSalutarisGounodDVE
    \orgelsystemOSalutarisGounodDVE
  >>
}