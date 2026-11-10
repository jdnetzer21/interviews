# Create a merge conflict

```bash
echo "line from main" > conflict.txt
git add conflict.txt && git commit -m "add conflict.txt"
git checkout -b branch-a && echo "change A" > conflict.txt && git commit -am "A"
git checkout - && git checkout -b branch-b && echo "change B" > conflict.txt && git commit -am "B"
git merge branch-a
```

Resolve the conflict so the final file contains both changes (your choice of order), complete the merge, and explain in `commands.md` how you decided.
