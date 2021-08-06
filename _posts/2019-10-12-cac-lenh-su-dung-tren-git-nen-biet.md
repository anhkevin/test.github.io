---
id: 252
title: Các lệnh sử dụng trên GIT nên biết
date: 2019-10-12T14:44:12+07:00
author: Ime Share
excerpt: Git là một hệ thống quản lý phiên bản phân tán (distributed version control system) hỗ trợ quản lý code và lịch sử thay đổi, có khả năng tách nhánh (branch), hỗ trợ rất tốt cho teamwork, những việc như phân chia task, tổng hợp code trở nên dễ dàng hơn nhiều.
layout: post
permalink: /cac-lenh-su-dung-tren-git-nen-biet/
post_views_count:
  - "93"
categories: [Orther]
tags: [GIT]
---
<span style="text-decoration: underline;"><span style="font-size: 14pt;"><strong>Git cheat sheet &#8211; Bảng các lệnh Git cơ bản</strong></span></span>  
[<img class="alignleft wp-image-552 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog.jpg" alt="" width="1200" height="1697" srcset="https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog.jpg 1200w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-212x300.jpg 212w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-724x1024.jpg 724w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-768x1086.jpg 768w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-1086x1536.jpg 1086w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-106x150.jpg 106w, https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog-300x424.jpg 300w" sizes="(max-width: 1200px) 100vw, 1200px" />](https://anhkevin.github.io/assets/img/uploads/2019/10/git-cheat-sheet-ime-share-blog.jpg)

**<span style="font-size: 14pt;">&#8211; Thiết lập thông tin user</span>**

+ Thiết lập cho toàn bộ dự án thì có chữ **`--global`**

```
$ git config --global user.name "username"
$ git config --global user.email "username@domain.com"
```

+ Thiết lập riêng project đó thì bỏ chữ **`--global`**

```
$ git config user.name "username"
$ git config user.email "username@domain.com"
```

**<span style="font-size: 14pt;">&#8211; Clone một remote về</span>**

```
$ git clone https://github.com/user/repository.git
```

**<span style="font-size: 14pt;">&#8211; Lệnh liên quan Branch</span>**

+ Xem các nhánh hiện tại ở local

```
$ git branch
```

+ Xem tất cả các nhánh

```
$ git branch - a
```

+ Tạo mới một nhánh

```
$ git branch &lt;name_branch>
```

+ Xóa một branch

```
$ git branch -d &lt;name_branch>
```

**<span style="font-size: 14pt;">&#8211; Chuyển nhánh</span>**

```
$ git checkout &lt;name_branch>
```

**<span style="font-size: 14pt;">&#8211; Kéo những thay đổi về nhánh hiện tại</span>**

```
$ git pull origin &lt;name_branch>
```

**<span style="font-size: 14pt;">&#8211; Cập nhật thay đổi</span>**

**Bước 1:** Add các file trước khi commit

```
$ git add .
$ git add change_file.txt
$ git add folder_change/
```

Dòng 1: add tất cả  
Dòng 2: chỉ add file thay đổi muốn commit  
Dòng 3: chỉ add folder thay đổi muốn commit

**Bước 2:** Commit những thay đổi lên local

```
$ git commit - m "commit message"
```

**Bước 3:** Cập nhật các commit trên local lên server (nếu ko muốn cập nhật lên server thì bỏ qua bước này)

```
$ git push origin &lt;name_branch>
```

**<span style="font-size: 14pt;">&#8211; Gộp nhánh</span>**  
Muốn gộp nhánh branch\_1 vào branch\_2 thì làm như sau:  
+ checkout vào nhánh branch_2  
+ sau đó merge nhánh branch_1 vào

```
$ git checkout &lt;branch_2>
$ git merge &lt;branch_1>
```