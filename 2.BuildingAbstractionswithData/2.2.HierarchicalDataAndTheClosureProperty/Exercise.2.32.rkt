#lang sicp

(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest
                (map (lambda (subset)
                             (cons (car s)
                                   subset))
                     rest)))))

                     
(define someset (list 1 2 3))

(subsets someset) ; (() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))