# Exercise 1.3

```lisp
(define (sum-square-of-max-two-numbers x y z)
  (+
    (square
      (cond (
                  (and (>= x y) (>= x z)) x
                )
                (
                  (and (>= y x) (>= y z)) y
                )
                (
                  (and (>= z x) (>= z y)) z
                )
      )
    )
    (square
      (cond (
                  (and (>= x y) (>= x z))
                  (if (>= y z) y z)
                 )
                (
                  (and (>= y x) (>= y z))
                  (if (>= x z) x z)
                )
                (
                  (and (>= z x) (>= z y))
                  (if (>= x y) x y)
                )
      )
    )
  )
)

```

Considering the duplication of judging for max number.

```lisp
(define (sum-square-of-max-two-numbers x y z)
  (cond (
              (and (>= x y) (>= x z))
              (sum-square x (if (>= y z) y z))
            )
            (
              (and (>= y x) (>= y z))
              (sum-square y (if (>= x z) x z))
            )
            (
              (and (>= z x) (>= z y))
              (sum-square z (if (>= x y) x y))
            )
)

```

Considering the commutative property of plus.

```lisp
(define (sum-square-of-max-two-numbers x y z)
  (cond (
              (and (<= x y) (<= x z))
              (sum-square y z)
            )
            (
              (and (<= y x) (<= y z))
              (sum-square x z)
            )
            (
              (and (<= z x) (<= z y))
              (sum-square x y)
            )
)

```

Considering the duplication of judgement.

```lisp
(define (sum-square-of-max-two-numbers x y z)
  (if (and (<= x y) (<= x z))
      (sum-square y z)
      (sum-square-of-max-two-numbers y z x)
  )
)
```