# 01 - RTL (~60 min)

Deliver in `solutions/<name>/01-rtl/`.

## Task 1: Synchronous FIFO
Design `sync_fifo` in Verilog/SystemVerilog (synthesizable):
- Parameters: `DATA_W` (default 8), `DEPTH` (power of 2, default 16)
- Ports: `clk, rst_n, wr_en, wr_data, rd_en, rd_data, full, empty, count`
- Writes when full and reads when empty must be ignored safely (no corruption)
- `rd_data` is registered (1-cycle read latency); document this

Deliver: `sync_fifo.sv`

## Task 2: Testbench
Write a self-checking testbench `tb_sync_fifo.sv` (scoreboard/reference model, no manual waveform inspection needed):
- Fill, drain, simultaneous read/write, overflow and underflow attempts
- Randomized traffic with a fixed seed
- Prints `PASS`/`FAIL` and exits non-zero on failure if your simulator allows

## Task 3: Written answers (`answers.md`)
1. How would you change the design for asynchronous (dual-clock) operation? What breaks?
2. Where would you add assertions (SVA)? Write two.
3. Estimate area/timing concerns of this design at DEPTH=1024.
4. What reset strategy did you choose and why?

## Task 4: Bug hunt
Review [`buggy_arbiter.sv`](buggy_arbiter.sv). List every bug you find in `bugs.md` and provide a fixed `fixed_arbiter.sv`.

`xrun` is not available in Codespaces. Use Icarus Verilog (`iverilog -g2012`) or Verilator, both preinstalled; avoid UVM and other commercial-only features. Include run instructions in `RUN.md`.
