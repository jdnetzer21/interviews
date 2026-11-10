# 02 - HDL knowledge (~30 min)

Deliver in `solutions/<name>/02-hdl/` as `answers.md` (plus code files where asked).

## Part A: Short answers
1. Blocking vs non-blocking assignments: when to use each? What happens if mixed in one clocked block?
2. What causes an inferred latch? Show an example and the fix.
3. `always_comb` vs `always @(*)`; `logic` vs `wire`/`reg`.
4. Explain `==` vs `===`, and `casex`/`casez` pitfalls.
5. What is a race condition in simulation? Give an example and how to avoid it.
6. Synchronous vs asynchronous reset: trade-offs. What is reset deassertion synchronization?
7. What is clock domain crossing? Name 3 safe CDC techniques and when to use each.
8. Which constructs are not synthesizable? (`#delay`, `initial`, `fork/join`, etc.)

## Part B: Code review
[`review_me.sv`](review_me.sv) has several issues (style, synthesis, functional). Create `review.md` listing them with severity and a corrected `review_me_fixed.sv`.

## Part C: Write
Write a parameterized module `bin2gray` and `gray2bin` (width parameter), plus a tiny testbench proving round-trip for all values of an 8-bit input.
