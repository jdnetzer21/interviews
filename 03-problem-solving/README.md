# 03 - Problem solving (~45 min)

Deliver in `solutions/<name>/03-problem-solving/`. Use Python, C/C++, or any language you like (state which). Include tests or sample runs, and a note on complexity.

## Problem 1: Merge intervals
Given a list of `[start, end]` intervals, merge all overlapping ones. Input via stdin or function argument.
Example: `[[1,3],[2,6],[8,10],[15,18]]` -> `[[1,6],[8,10],[15,18]]`

## Problem 2: Top-N frequent words
Given a text file, print the N most frequent words (case-insensitive), ties broken alphabetically. It must handle files larger than memory comfortably: describe how you would adapt it.

## Problem 3: Estimation / reasoning (written, `reasoning.md`)
A chip has 64 cores connected by a 2D mesh. Each core sends a packet to a random other core every 100 cycles. Packets are 4 flits.
- Estimate average hop count and link load.
- Where is the likely bottleneck?
- State all assumptions explicitly.

## Problem 4: Debug the puzzle
[`find_bug.py`](find_bug.py) is meant to return the k-th smallest element. It sometimes fails. Find the bug, explain it, add a failing test, then fix it.
