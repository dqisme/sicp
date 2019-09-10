# Exercise 1.22

```lisp
(define (search-for-primes start)
  (define (search-for-primes-iter odd total)
    (if (= total 3) (display " done ")
        (search-for-primes-iter
         (next-odd odd)
         (+ total (if (timed-prime-test odd) 1 0)))))
  (define (next-odd number)
    (+ number (if (even? number) 1 2)))

  (search-for-primes-iter (next-odd start) 0))
```

The three smallest primes larger than 1,000

```lisp
(search-for-primes 1000)

;1001
;1003
;1005
;1007
;1009 *** 0.001953125
;1011
;1013 *** 0.003173828125
;1015
;1017
;1019 *** 0.0029296875 done
```

The three smallest primes larger than 10,000

```lisp
(search-for-primes 10000)

;10001
;10003
;10005
;10007 *** 0.008056640625
;10009 *** 0.007080078125
;10011
;10013
;10015
;10017
;10019
;10021
;10023
;10025
;10027
;10029
;10031
;10033
;10035
;10037 *** 0.008056640625 done
```

The three smallest primes larger than 100,000

```lisp
(search-for-primes 100000)

;100001
;100003 *** 0.02294921875
;100005
;100007
;100009
;100011
;100013
;100015
;100017
;100019 *** 0.02197265625
;100021
;100023
;100025
;100027
;100029
;100031
;100033
;100035
;100037
;100039
;100041
;100043 *** 0.02197265625 done
```

The three smallest primes larger than 1,000,000

```lisp
(search-for-primes 1000000)

;1000001
;1000003 *** 0.06689453125
;1000005
;1000007
;1000009
;1000011
;1000013
;1000015
;1000017
;1000019
;1000021
;1000023
;1000025
;1000027
;1000029
;1000031
;1000033 *** 0.06689453125
;1000035
;1000037 *** 0.06689453125 done
```
