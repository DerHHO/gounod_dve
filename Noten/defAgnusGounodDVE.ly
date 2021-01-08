
chorpartiturAgnusGounodDVE = {
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
            \transpose c c \sopranNotenAgnusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenAgnusGounodDVE
          }
        }
        \addlyrics \sopranTextAgnusGounodDVE
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
            \transpose c c \altNotenAgnusGounodDVE
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenAgnusGounodDVE
          }
        }
        \addlyrics \altTextAgnusGounodDVE
      >>
    >>
  >>
}
orgelsystemAgnusGounodDVE = {
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
              \transpose c c \orgelRHNotenAgnusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenAgnusGounodDVE
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
              \transpose c c \orgelLHNotenAgnusGounodDVE
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenAgnusGounodDVE
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
          \transpose c c \orgelPedNotenAgnusGounodDVE
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \orgelPedNotenAgnusGounodDVE
        }
      }

    >>%}
  >>

}

scoreAgnusGounodDVE = {
  <<
    \chorpartiturAgnusGounodDVE
    \orgelsystemAgnusGounodDVE
  >>
}