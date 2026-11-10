# Scenario 3: Performance regression

Build times jumped after a recent change. `build_times.log` has one line per CI build. Determine:

1. When did the regression start (build id / commit)?
2. How large is it (mean/median before vs after)? Show how you computed it.
3. Which stage is responsible? Is it consistent or noisy (outliers)?
4. Which commit is the likely culprit? How would you confirm (e.g. `git bisect`)?
5. Suggest a way to alert on this automatically.

Format: `build=<id> commit=<sha> stage=<name> duration_s=<n>`
