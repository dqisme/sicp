#lang sicp

(define (sum-square a b)
  (+ (* a a) (* b b)))

(define (sum-square-of-max-two-numbers x y z)
  (if (and (<= x y) (<= x z))
      (sum-square y z)
      (sum-square-of-max-two-numbers y z x)
  )
)