---
id: 7
title: Cách sử dụng SmartGit miễn phí !
date: 2019-09-26T16:19:35+07:00
author: Ime Share
layout: post
permalink: /cach-su-dung-smartgit-mien-phi/
post_views_count:
  - "1323"
categories: [Orther]
tags: [GIT, Smartgit]
---
**SmartGit** là phần mềm giúp kiểm soát phiên bản Git, Mercurial và SVN tốt nhất trong các phần mềm mà mình từng sử dụng. Nhưng nó là một phần mềm có phí sử dụng và chỉ được dùng thử trong 30 ngày. 

Trường hợp dùng thử sau 30 ngày thì sao => sẽ không sử dụng được nữa => nó sẽ bắt mua license của nó để sử dụng tiếp => nếu bạn muốn sử dụng tiếp mà ko phải mua thì bắt buộc phải đọc tiếp bài viết phía dưới.

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

Sau đây là cách dùng thử nhiều lần **khi hết hạn dùng thử** mà ko phải mua license:

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

**Bước 1:** Tìm đến thư mục setting của SmartGit

<!-- /wp:paragraph -->

<!-- wp:list -->

  * Trên Windows: <span style="color: #800000;"><code>%APPDATA%\syntevo\SmartGit\</code></span>
  * Trên OS X: <span style="color: #800000;"><code>~/Library/Preferences/SmartGit/</code></span>
  * Trên Unix/Linux: <span style="color: #800000;"><code>~/.smartgit/</code></span>

Sau đó chọn thư mục là phiên bản SmartGit đang dùng (_thường là phiên bản lớn nhất_).

<!-- /wp:list -->

<!-- wp:paragraph -->

**Bước 2:** Xóa file license
* Trước <span style="color: #ff0000;">version 19</span> ở thư mục <code>\smart-git-version\ </code> xóa file: 
  * <span style="color: #ff0000;"><code>setting.xml</code></span>
* Từ <span style="color: #ff0000;">version 19</span> trở đi:  
  * Thư mục: <code>\smart-git-version\ </code> xóa file:
    * <span style="color: #ff0000;"><code>preferences.yml</code></span>
    * <span style="color: #ff0000;"><code>license</code></span>
  * Thư mục: <code>\smart-git-version\ .backup</code> xóa file:
    * <span style="color: #ff0000;"><code>preferences.yml</code></span>

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

**Bước 3:** Mở SmartGit lên sẽ hiển thị màn hình giống lúc bạn cài đặt -> nếu không tùy chỉnh gì khác thì cứ để default và bấm next và next là xong (lúc này lại được dùng thử 30 ngày giống như cài đặt lúc đầu).

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

=> Khi nào hết ngày dùng thử bạn lại thực hiện lại các thao tác trên.

<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center"} -->

<p style="text-align: center;">
  ========== GOOD LUCK ==========
</p>

<!-- /wp:paragraph -->
