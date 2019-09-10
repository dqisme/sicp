#lang sicp

(define (f n)
  (if (< n 3)
    3
    (+
     (f (- n 1))
     (* 2(f (- n 2)))
     (* 3 (f (- n 3))))))