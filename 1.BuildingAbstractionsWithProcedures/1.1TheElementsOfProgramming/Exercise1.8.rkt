#lang sicp

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2)) 3))

(define (good-enough? guess next-guess)
  (< (/ (abs (- guess next-guess)) guess) 0.001))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))