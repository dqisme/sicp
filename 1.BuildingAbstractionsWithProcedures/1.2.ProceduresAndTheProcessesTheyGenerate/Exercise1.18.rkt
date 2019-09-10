#lang sicp

(define (multiply a b)
  (define (multiply-iter q a b)
    (cond
      ((= 1 b) (+ a q))
      ((even? b) (multiply-iter
                  q (double a) (halve b)))
      (else (multiply-iter
             (+ q a) a (- b 1)))))
  (multiply-iter 0 a b))