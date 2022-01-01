\version "2.22.0"

chorpartiturKyrieGounodDVE = {
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
            \transpose c c \sopranNotenKyrieGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenKyrieGounodDVE
          }
        }
        \addlyrics \sopranTextKyrieGounodDVE
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
            \transpose c c \altNotenKyrieGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenKyrieGounodDVE
          }
        }
        \addlyrics \altTextKyrieGounodDVE
      >>
    >>
  >>
}
orgelsystemKyrieGounodDVE = {
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
              \transpose c c \orgelRHNotenKyrieGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenKyrieGounodDVE
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
              \transpose c c \orgelLHNotenKyrieGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenKyrieGounodDVE
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
          \transpose c c \orgelPedNotenKyrieGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenKyrieGounodDVE
        }
      }

    >>%}
  >>

}

scoreKyrieGounodDVE = {
  <<
    \chorpartiturKyrieGounodDVE
    \orgelsystemKyrieGounodDVE
  >>
}