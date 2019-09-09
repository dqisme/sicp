# Exercise 1.7

## Small number case

When a number `x` is so small that the precision `0.001` is too large to it relatively. So the best guess will be too rough. For example,

```lisp
(square (sqrt 0.00009))
```

The result above is `0.0010370489120680158`.

## Large number case

Due to the [Loss of significanse](https://en.wikipedia.org/wiki/Loss_of_significance), there always will be a [fixed point](https://en.wikipedia.org/wiki/Fixed_point_(mathematics)) for `improve` procedure.
When the number is too large, the "best guess" will fixed in a number which precision is below `0.001`.

**So it will run into dead loop.**

For example, `3162277.6601683795` is a fixed point for

```lisp
(improve 3162277.6601683795 10000000000000)
```

while the result of `(square 3162277.6601683795)` is `10000000000000.002` which never be `good enough` as a guess but it is a fixed best guess.

## Alternative strategy

Redefine `good-enough?` and `sqrt-iter` as below,

```lisp
(define (good-enough? guess next-guess)
  (< (/ (abs (- guess next-guess)) guess) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))
```
