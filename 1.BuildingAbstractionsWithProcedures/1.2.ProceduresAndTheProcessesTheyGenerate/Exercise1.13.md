# Exercise 1.13

Suppose we have proved that
$$
  Fib(n) = \frac{\phi^n - \psi^n}{\sqrt{5}}
$$

in which $\phi=\frac{1+\sqrt{5}}{2}, \psi=\frac{1-\sqrt{5}}{2}$

We can get:
$$
  |Fib(n) - \frac{\phi^n}{\sqrt{5}}|
  = |\frac{\psi^n}{\sqrt{5}}|
  \le |\frac{\psi}{\sqrt{5}}|
  \le \frac{1}{2}
$$
Because $Fib(n)\in\mathbb{Z}^+$, we can conclude:
$$
  \left[\frac{\phi^n}{\sqrt{5}}\right]
  = Fib(n)
$$
