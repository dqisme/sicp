# Exercise 1.14

```mermaid
  graph TD;
    root["(count-change 11)"]-->cc-11-5["(cc 11 5)"];
    cc-11-5-->cc-11-4["(cc 11 4)"]
    cc-11-4-->cc-11-3["(cc 11 3)"]
    cc-11-3-->cc-11-2["(cc 11 2)"]
    cc-11-2-->cc-11-1["(cc 11 1)"]
    cc-11-1-->cc-11-0["(cc 11 0)"]
    cc-11-0-->zero1(0)
    cc-11-1-->cc-10-1["(cc 10 1)"]
    cc-10-1-->cc-10-0["(cc 10 0)"]
    cc-10-0-->zero2(0)
    cc-10-1-->cc-9-1["(cc 9 1)"]
    cc-9-1-->cc-9-0["(cc 9 1)"]
    cc-9-0-->zero3(0)
    cc-9-1-->cc-8-1["(cc 8 1)"]
    cc-8-1-->cc-8-0["(cc 8 0)"]
    cc-8-0-->zero4(0)
    cc-8-1-->cc-7-1["(cc 7 1)"]
    cc-7-1-->cc-7-0["(cc 7 0)"]
    cc-7-0-->zero5(0)
    cc-7-1-->cc-6-1["(cc 6 1)"]
    cc-6-1-->cc-6-0["(cc 6 0)"]
    cc-6-0-->zero6(0)
    cc-6-1-->cc-5-1["(cc 5 1)"]
    cc-5-1-->cc-5-0["(cc 5 0)"]
    cc-5-0-->zero7(0)
    cc-5-1-->cc-4-1["(cc 4 1)"]
    cc-4-1-->cc-4-0["(cc 4 0)"]
    cc-4-0-->zero8(0)
    cc-4-1-->cc-3-1["(cc 3 1)"]
    cc-3-1-->cc-3-0["(cc 3 0)"]
    cc-3-0-->zero9(0)
    cc-3-1-->cc-2-1["(cc 2 1)"]
    cc-2-1-->cc-2-0["(cc 2 0)"]
    cc-2-0-->zero10(0)
    cc-2-1-->cc-1-1["(cc 1 1)"]
    cc-1-1-->cc-1-0["(cc 1 0)"]
    cc-1-0-->zero11(0)
    cc-1-1-->cc-0-1["(cc 0 1)"]
    cc-0-1-->one1(1)
    cc-11-2-->cc-6-2["(cc 6 2)"]
    cc-6-2-->cc-6-1'["(cc 6 1)"]
    cc-6-1'-->cc-6-0'["(cc 6 0)"]
    cc-6-0'-->zero12(0)
    cc-6-1'-->cc-5-1'["(cc 5 1)"]
    cc-5-1'-->cc-5-0'["(cc 5 0)"]
    cc-5-0'-->zero13(0)
    cc-5-1'-->cc-4-1'["(cc 4 1)"]
    cc-4-1'-->cc-4-0'["(cc 4 0)"]
    cc-4-0'-->zero14(0)
    cc-4-1'-->cc-3-1'["(cc 3 1)"]
    cc-3-1'-->cc-3-0'["(cc 3 0)"]
    cc-3-0'-->zero15(0)
    cc-3-1'-->cc-2-1'["(cc 2 1)"]
    cc-2-1'-->cc-2-0'["(cc 2 0)"]
    cc-2-0'-->zero16(0)
    cc-2-1'-->cc-1-1'["(cc 1 1)"]
    cc-1-1'-->cc-1-0'["(cc 1 0)"]
    cc-1-0'-->zero17(0)
    cc-1-1'-->cc-0-1'["(cc 0 1)"]
    cc-0-1'-->one2(1)
    cc-6-2-->cc-1-2["(cc 1 2)"]
    cc-1-2-->cc-1-1''["(cc 1 1)"]
    cc-1-1''-->cc-1-0''["(cc 1 0)"]
    cc-1-0''-->zero18(0)
    cc-1-1''-->cc-0-1''["(cc 0 1)"]
    cc-0-1''-->one3(1)
    cc-1-2-->cc=4-2["(cc -4 2)"]
    cc=4-2-->zero19(0)
    cc-11-3-->cc-1-3["(cc 1 3)"]
    cc-1-3-->cc-1-2'["(cc 1 2)"]
    cc-1-2'-->cc-1-1'''["(cc 1 1)"]
    cc-1-1'''-->cc-1-0'''["(cc 1 0)"]
    cc-1-0'''-->zero20(0)
    cc-1-1'''-->cc-0-1'''["(cc 0 1)"]
    cc-0-1'''-->one4(1)
    cc-1-2'-->cc=4-2'["(cc -4 2)"]
    cc=4-2'-->zero21(0)
    cc-1-3-->cc=9-3["(cc -9 3)"]
    cc=9-3-->zero22(0)
    cc-11-4-->cc=14-4["(cc -14 4)"]
    cc=14-4-->zero23(0)
    cc-11-5-->cc=39-5["(cc -39 5)"]
    cc=39-5-->zero24(0)
```

In total, we have 4 of `1` and 24 of `0`. So the result of `(count-change 11)` is `4`

It runs `55` steps (total amount of nodes) and need `15` spaces (maximum depth).

For the case of $n$, the root node `(count-change n)` will be evaluated to `(cc n 5)`, then this first child node will be evaluated to two nodes, `(cc n 4)` and `(cc (- n (first-denomination 5)) 5)` and so on.

Then we can infer that for the each node in the tree as `(cc i k)` in which $i\le n, k\le 5$, it will evaluated to `(cc i (- k 1))` and `(cc (- i (first-denomination k)) k)` until $i\le0$ or $k=0$.

Although the exact amount of the nodes depends on the series of `first-denomination` of $k$, we can consider the maximum nodes case is that all the `first-denomination` of $k$ is `1`. That means each node `(cc i k)` will be evaluated to `(cc (- i 1) k)` and `(cc i (- k 1))` until $i=0$ or $k=0$.

So the maximum amount nodes of `(count-change n)` is

$$
  NodeAmount_{maximum}(n, m) = NodeAmount_{maximum}(n-1, m) + NodeAmount_{maximum}(n, m-1)
$$
