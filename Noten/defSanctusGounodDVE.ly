
chorpartiturSanctusGounodDVE = {
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
            \transpose c c \sopranNotenSanctusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenSanctusGounodDVE
          }
        }
        \addlyrics \sopranTextSanctusGounodDVE
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
            \transpose c c \altNotenSanctusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenSanctusGounodDVE
          }
        }
        \addlyrics \altTextSanctusGounodDVE
      >>
    >>
  >>
}
orgelsystemSanctusGounodDVE = {
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
              \transpose c c \orgelRHNotenSanctusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSanctusGounodDVE
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
              \transpose c c \orgelLHNotenSanctusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSanctusGounodDVE
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
          \transpose c c \orgelPedNotenSanctusGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenSanctusGounodDVE
        }
      }

    >>
  >>

}

scoreSanctusGounodDVE = {
  <<
    \chorpartiturSanctusGounodDVE
    \orgelsystemSanctusGounodDVE
  >>
}