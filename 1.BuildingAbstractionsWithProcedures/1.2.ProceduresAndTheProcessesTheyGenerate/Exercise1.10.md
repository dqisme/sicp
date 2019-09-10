# Exercise 1.10

First evaluation can infer that `(A 1 n)` = \(2^{n}\) .

```lisp
(A 1 10)
(A 0 (A 1 9))
(* 2 (A 1 9))
(* 2 (A 0 (A 1 8)))
(* 2 (* 2 (A 1 8)))
(* 2 (* 2 (A 0 (A 1 7)))
(* 2 (* 2 (* 2 (A 1 7)))
(* 2 (* 2 (* 2 (A 0 (A 1 6)))
(* 2 (* 2 (* 2 (* 2 (A 1 6)))
(* 2 (* 2 (* 2 (* 2 (A 0 (A 1 5))))
(* 2 (* 2 (* 2 (* 2 (* 2 (A 1 5))))
(* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 4))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 4))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 3))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 3))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 2))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 2))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 1))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 1))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))
1024
```
Second evaluation can infer that `(A 2 n)` = \(\underbrace{2^{2^{...^{2}}}}_{n}\) which is the [Tetration](https://en.wikipedia.org/wiki/Tetration) written in \(^{4}2\)

```lisp
(A 2 4)
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 (* 2 2)))
(A 1 (A 1 4))
(A 1 (A 0 (A 1 3)))
(A 1 (A 0 (A 0 (A 1 2))))
(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
(A 1 (A 0 (A 0 (A 0 2))))
(A 1 (A 0 (A 0 (* 2 2))))
(A 1 (A 0 (A 0 4)))
(A 1 (A 0 (* 2 4)))
(A 1 (A 0 8))
(A 1 (* 2 8))
(A 1 16)
;... just as first evaluation above.
65536
```

So we can easily infer that (A 3 n) is the [Pentation](https://en.wikipedia.org/wiki/Pentation)

```lisp
(A 3 3)
(A 2 (A 3 2))
(A 2 (A 2 (A 3 1))
(A 2 (A 2 2)
;(A 2 (A 1 (A 2 1)))
;(A 2 (A 1 2))
;(A 2 (A 0 (A 1 1)))
;(A 2 (A 0 2))
;(A 2 (* 2 2))
(A 2 4)
65535
```

So the Ackermann's function can be infered

(A m n) = \(2[m+2]n\)

which is the [Hyperoperation](https://en.wikipedia.org/wiki/Hyperoperation)
