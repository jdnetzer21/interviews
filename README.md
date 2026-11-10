# Technical Interview Exercises

Hands-on interview covering RTL, HDL, problem solving, AI, Linux, GitHub and log analysis.
You may use any tools you normally use (including AI) unless a section says otherwise. **Explain your reasoning out loud.**

## Workflow (required for every section)

1. Fork or clone this repo (the interviewer will tell you which).
2. Create a branch named after you: `git checkout -b <firstname-lastname>`
3. Save every answer inside `solutions/<firstname-lastname>/<section>/` (create the folders yourself), for example:
   ```
   solutions/jane-doe/01-rtl/
   solutions/jane-doe/07-log-analysis/scenario-1/
   ```
4. Commit in small, meaningful commits with clear messages (we read your history).
5. Push your branch and open a Pull Request to `main`. Put a short summary and any assumptions in the PR description.

Do **not** edit files outside your own `solutions/<name>/` folder.

## Environment (GitHub Codespaces)

Open the repo in a Codespace; `.devcontainer` installs the tools. Commercial simulators (e.g. Cadence `xrun`) are **not** available there, so use the open-source ones:

```bash
iverilog -g2012 -o sim.vvp tb.sv dut.sv && vvp sim.vvp      # Icarus Verilog
verilator --binary --timing -Wall tb.sv dut.sv && ./obj_dir/V*   # Verilator
```

Keep your code simulator-neutral where possible (avoid vendor-only features) and document the exact command you used in `RUN.md`.

## Sections

| # | Folder | Focus |
|---|--------|-------|
| 1 | [01-rtl](01-rtl/) | Synthesizable RTL design and verification |
| 2 | [02-hdl](02-hdl/) | HDL language knowledge, debug, code review |
| 3 | [03-problem-solving](03-problem-solving/) | Algorithms, reasoning, scripting |
| 4 | [04-ai](04-ai/) | Using AI tools effectively and critically |
| 5 | [05-linux-commands](05-linux-commands/) | Shell fluency on real data |
| 6 | [06-github](06-github/) | Git/GitHub workflow knowledge |
| 7 | [07-log-analysis](07-log-analysis/) | 3 log-analysis scenarios |

Each section README lists tasks and what to deliver. Time guidance is in each README; if you get stuck, document what you tried and move on.
