#lang sicp

(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))

(define left-branch car)
(define right-branch cadr)
(define branch-length car)
(define branch-structure cadr)

(define (left-branch-structure mobile)
  (branch-structure (left-branch mobile)))

(define (right-branch-structure mobile)
  (branch-structure (right-branch mobile)))

(define (total-weight mobile)
  (if (pair? mobile)
      (+ (total-weight (left-branch-structure mobile))
         (total-weight (right-branch-structure mobile)))
      mobile))

(define (branch-torque branch)
  (* (branch-length branch)
     (total-weight (branch-structure branch))))

(define (balanced? mobile)
  (if (pair? mobile)
      (and (= (branch-torque (left-branch mobile))
              (branch-torque (right-branch mobile)))
           (balanced? (left-branch-structure mobile))
           (balanced? (right-branch-structure mobile)))
      #t))

(define mobile
  (make-mobile
   (make-branch 2 12)
   (make-branch 6 (make-mobile
                   (make-branch 1 3)
                   (make-branch 3 1)))))

(total-weight mobile) ; 16
(balanced? mobile) ; #t
