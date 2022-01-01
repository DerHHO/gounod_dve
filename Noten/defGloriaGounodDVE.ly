\version "2.22.0"

chorpartiturGloriaGounodDVE = {
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
            \transpose c c \sopranNotenGloriaGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenGloriaGounodDVE
          }
        }
        \addlyrics \sopranTextGloriaGounodDVE
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
            \transpose c c \altNotenGloriaGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenGloriaGounodDVE
          }
        }
        \addlyrics \altTextGloriaGounodDVE
      >>
    >>
  >>
}

orgelsystemGloriaGounodDVE = {
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
              \transpose c c \orgelRHNotenGloriaGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenGloriaGounodDVE
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
              \transpose c c \orgelLHNotenGloriaGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenGloriaGounodDVE
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
          \transpose c c \orgelPedNotenGloriaGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenGloriaGounodDVE
        }
      }

    >>%}
  >>

}

scoreGloriaGounodDVE = {
  <<
    \chorpartiturGloriaGounodDVE
    \orgelsystemGloriaGounodDVE
  >>
}