\version "2.18.2"

optionalTranspose = #(define-music-function (parser location music)
                       (ly:music?)
                       (let* ((octave (or (ly:get-option 'octave) -1))
                              (note (or (ly:get-option 'note) 0))
                              (alteration (or (ly:get-option 'alteration) 0))
                              (to (ly:make-pitch octave note alteration)))
                         #{ \transpose c $to  $music #}))