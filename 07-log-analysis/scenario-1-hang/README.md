# Scenario 1: The regression that hangs

A nightly RTL regression (`sim.log`) never finished and was killed by the timeout. Determine:

1. Which test hung and at what simulation time?
2. What was the last meaningful activity before the hang?
3. Likely root cause (hypothesis + evidence). Is it a design bug, testbench bug, or infrastructure problem?
4. What would you add to the testbench/regression to catch this faster next time?
