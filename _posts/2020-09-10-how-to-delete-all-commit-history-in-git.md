---
title: How to delete all commit history in GIT
date: 2020-09-10 14:57:00 +0700
categories: [Orther]
tags: [GIT]
---

## If you want to delete all of our commits history, but keep the code in its current state, try this

1. Check out to temp branch:
```shell
git checkout --orphan temp_branch
```
> `--orphan` : Create a new orphan branch. The first commit made on this new branch will have no parents and it will be the root of a new history totally disconnected from all the other branches and commits.
2. Add all the files:
```shell
git add -A
```
3. Commit the changes:
```shell
git commit -am "Initial commit"
```
4. Delete the old branch:
```shell
git branch -D master
```
5. Rename the temp branch to master:
```shell
git branch -m master
```
6. Finally, force update to our repository:
```shell
git push -f origin master
```