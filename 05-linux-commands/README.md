# 05 - Linux commands (~30 min)

Use a Linux shell (WSL, VM, or Git Bash is fine). Deliver in `solutions/<name>/05-linux-commands/`:
`answers.sh` (or `answers.md`) containing **one command or short pipeline per question**, with a one-line explanation each.

Data: [`access.log`](access.log) (web server log, format: `ip - - [time] "METHOD path proto" status bytes`).

## Questions
1. Count total lines and unique client IPs.
2. Top 3 IPs by request count.
3. How many requests returned a 5xx status?
4. Total bytes served for status 200.
5. List the paths requested, with counts, sorted descending.
6. Show only requests between 10:05 and 10:10 (any tool).
7. Replace every IP's last octet with `x` and write to `anon.log` without modifying the original.
8. Find all `.sv` and `.v` files under a directory modified in the last 2 days containing the word `TODO`.
9. A process is using port 8080. How do you find and stop it safely?
10. Explain `chmod 750`, `ls -lh`, `df -h` vs `du -sh *`, `ps aux | grep` pitfalls, and `kill` vs `kill -9`.
11. Write a one-liner that runs a command every 5 seconds and logs its output with timestamps.
12. What does `set -euo pipefail` do and when would you not use it?

Bonus: write a bash script `report.sh` that takes a log path and prints a small summary (total, top IPs, error rate) and handles a missing file gracefully.
