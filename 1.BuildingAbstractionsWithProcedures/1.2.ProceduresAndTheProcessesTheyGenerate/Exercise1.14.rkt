#lang sicp

(define step 0)

(define (count-change amount)
  (cc amount 5))
(define (cc amount kinds-of-coins)
  (display `(cc ,amount ,kinds-of-coins)) (newline)
  (set! step (+ 1 step))
  (cond ((= amount 0) (display 1) (newline) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) (display 0) (newline) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 11)
(newline)
(display step)
(newline)