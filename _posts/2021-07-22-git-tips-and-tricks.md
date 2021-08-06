---
title: Git Tips and Tricks
date: 2021-07-22 21:30:00 +0700
categories: [Orther]
tags: [GIT]
math: true
---

## 1. Git clean
***
**- Problem:**
```shell
error: The following untracked working tree files would be overwritten by checkout:
        application/abc/xyz1.i
        application/abc/xyz2.i
        application/abc/xyz3.i
Please move or remove them before you switch branches.
Aborting
```

**- Solution:**
```shell
git clean -fd application/
```
- ‘git clean -n’ hiển thị danh sách files, folder sẽ bị xóa
- ‘git clean -f’ chỉ xóa files
- ‘git clean -d’ chỉ xóa folder
- ‘git clean -fd’ xóa files và folder
- ‘git clean -fx’ xóa các files đã được ignored (.gitignore)
- ‘git clean -fdx’ xóa các files, folder đã được ignored (.gitignore)
- ‘git clean --force’ clean hết
