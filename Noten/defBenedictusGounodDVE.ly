
chorpartiturBenedictusGounodDVE = {
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
            \transpose c c \sopranNotenBenedictusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenBenedictusGounodDVE
          }
        }
        \addlyrics {
          \sopranTextBenedictusGounodDVE
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
            \transpose c c \altNotenBenedictusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenBenedictusGounodDVE
          }
        }
        \addlyrics {
          \altTextBenedictusGounodDVE
        }
      >>
    >>
  >>
}
orgelsystemBenedictusGounodDVE = {
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
              \transpose c c \orgelRHNotenBenedictusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenBenedictusGounodDVE
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
              \transpose c c \orgelLHNotenBenedictusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenBenedictusGounodDVE
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
          \transpose c c \orgelPedNotenBenedictusGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenBenedictusGounodDVE
        }
      }

    >>
  >>

}

scoreBenedictusGounodDVE = {
  <<
    \chorpartiturBenedictusGounodDVE
    \orgelsystemBenedictusGounodDVE
  >>
}