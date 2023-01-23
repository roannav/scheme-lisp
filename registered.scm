#!/usr/local/bin/guile -s 
!#
; process a list of people who have registered for a meeting
(for-each (lambda (str)
            (display
              (string-append str "has registered for the meeting.\n")))
          `("Amy F.", "Boris Y.", "Chris B."))
