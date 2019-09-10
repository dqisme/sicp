#lang sicp

(define (pascal-triangle-element n i)
  (if (or (= i 0) (= i n) (< n 0))
      1
      (+
       (pascal-triangle-element (- n 1) (- i 1))
       (pascal-triangle-element (- n 1) i))))