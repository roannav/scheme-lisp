#!/usr/local/bin/guile -s 
!#
(display "Hello")
(newline)

; This is a comment that goes until the end of the line

(define x 0) ; create a new variable with the value 0
(define flag #f) ; create a new variable named flag with the value False
(display x) (newline)
(display flag) (newline)

(display "a fraction type!!!  ")
(define myFraction 1/3)
(display myFraction)(newline)

(display "a symbol type!!!  ")
(define mySymbol 'something)
(display mySymbol)(newline)

; change the value of a variable.
; ok to change types.
(set! x "I'm a new type!") 
(display x) (newline)

; Note: prefix style
(set! x (+ 1 2)) ; x = 1+2
(display x) (newline)

; (number->string x)  converts a number to a string
(display (string-append "x is " (number->string x) "\n"))

(define username "Mary")
(display (string-append username " has " (number->string (string-length username)) " letters.\n"))


(display "a list of cars.\n")
(define cars '("BMW" "Honda" "Ford"))
(display cars)(newline)
(map display cars)(newline)

; define a procedure
; a is the input
; a+1 is returned
(define (addOne a) (+ a 1))
; because (+ a 1) is the last expression in the procedure, it is automatically returned (aka implicit return)

; call the procedure
(display (addOne 4)) (newline)


; Alternate way to define a procedure.
; It uses lambda to create an anonymous procedure.
; Later, we give it the name addTwo.
(define addTwo (lambda (a) (+ a 2)))
; call the procedure
(display (addTwo 4)) (newline)

; if then else
(if (string? "computer")
    (display "I'm a string")
    (display "I'm not a string"))
(newline)

(define year 2023)

; if then else
; check if the year is greater than or equal to 2015
(cond
  ((>= year 2015)
   (display "year >= 2015  is true\n"))
  (else
   (display "year >= 2015  is false\n")))
   
