# Exercise 1.20

In the normal-order evaluation `remainder` will be performed operations for `1+2+4+7+4=18` times .

```lisp
(gcd 206 40)
(if (= 40 0) 206 (gcd 40 (r 206 40)))
(gcd 40 (r 206 40))
(if (= (r 206 40) 0) 40 (gcd (r 206 40) (r 40 (r 206 40)))) ;x1
(gcd (r 206 40) (r 40 (r 206 40)))
;if... x2, last is (r 40 6)
(gcd (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40))))
;if... x4, last is (r 6 4)
(gcd (r (r 206 40) (r 40 (r 206 40))) (r (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40)))))
;if... x7, last is (r 4 2) which is 0
(r (r 206 40) (r 40 (r 206 40))) ;4x
2
```

In the applicative-order evaluation `remainder` will be performed operations for `4` times .

```lisp
(gcd 206 40)
(if (= 40 0) 206 (gcd 40 (r 206 40)))
(gcd 40 (r 206 40)) ;x1
(gcd 40 6)
(if (= 6 0) 40 (gcd 6 (r 40 6))) ;x1
(gcd 6 4)
(if (= 4 0) 6 (gcd 4 (r 6 4))) ;x1
(gcd 4 2)
(if (= 2 0) 4 (gcd 2 (r 4 2))); x1
(gcd 2 0)
(if (= 0 0) 2 (gcd 0 (r 2 0)));
2
```
