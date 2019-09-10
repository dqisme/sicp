#lang sicp

(define (* a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))

  (cond
    ((or (= 0 a) (= 0 b)) 0)
    ((= b 1) a)
    ((even? b) (* (double a) (halve b)))
    (else (+ a (* a (- b 1))))))