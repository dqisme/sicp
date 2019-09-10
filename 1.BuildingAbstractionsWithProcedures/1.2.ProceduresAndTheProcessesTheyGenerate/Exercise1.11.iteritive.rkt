#lang sicp

(define (f n)
  (f-iter 3 3 3 n))

(define (f-iter n1 n2 n3 count)
  (if (= count 0)
      n3
      (f-iter
       (+ n1 (* 2 n2) (* 3 n3))
       n1
       n2
       (- count 1))))