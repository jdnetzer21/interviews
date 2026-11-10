# 06 - GitHub / Git knowledge (~30 min)

Work in your own branch (`<firstname-lastname>`). Deliver in `solutions/<name>/06-github/`.

## Hands-on tasks
Use real git/gh commands and record them (copy/paste) in `commands.md`.

1. **Branching**: from your branch create `feature/hello`, add `hello.txt`, commit, and merge back with a merge commit (`--no-ff`).
2. **Conflict**: [`conflict_setup.md`](conflict_setup.md) tells you how to create a merge conflict. Resolve it and explain your resolution.
3. **History rewrite**: make 4 small commits, then squash them into 2 with an interactive rebase. Show `git log --oneline` before/after.
4. **Undo**: show how you would (a) undo the last commit keeping changes, (b) revert a pushed commit safely, (c) recover a commit after a bad `reset --hard` (reflog).
5. **Pull Request**: open your PR to `main`, add a description, and request a review from the interviewer.
6. **gh CLI**: show the `gh` commands to list open PRs, check CI status and view a PR diff.

## Questions (`answers.md`)
1. Merge vs rebase vs squash-merge: when to use each?
2. What is `git cherry-pick` / `git bisect` / `git stash`? Give a use case for each.
3. What is a `.gitignore` vs `.gitattributes`? What should never be committed?
4. You committed a secret by mistake and pushed. What do you do?
5. Explain branch protection, CODEOWNERS, and required status checks.
6. What does a GitHub Actions workflow look like? Write a minimal one that runs a script on every PR (`.github/workflows/ci.yml`, include it in your folder).
7. Fork vs clone vs branch: differences and when to use each.
