#lang sicp

(define (fast-expt b n)
  (define (fast-expt-iter a b n)
    (cond
      ((= 1 n) (* a b))
      ((even? n) (fast-expt-iter
                  a (* b b) (/ n 2)))
      (else (fast-expt-iter
             (* a b) b (- n 1))))))