## To see files that change more frequently. 
```
On Linux:
git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
On Windows:
git log --pretty=format: --name-only | Group-Object  | Sort-Object -Property Count -Bottom 10 | Select-Object -Property Count, Name

```
## To see files that changed more frequently within last week.
```
?
```
## To see files that changed more frequently within last week On windows powershell.
```
?
```

### files changed between two commits.
```
git diff --name-only <commit1> <commit2>

Commits after commit1.
git diff --name-only <commit1 SHA> HEAD

To see also uncommitted files
git diff --name-only <commit1 SHA>
```

## search for word in commits.
```
git log --grep valgrind
```