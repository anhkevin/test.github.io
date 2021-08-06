---
id: 130
title: Lưu Caching trên Browser bằng htaccess
date: 2019-10-02T16:03:15+07:00
author: Ime Share
layout: post
permalink: /luu-caching-tren-browser-bang-htaccess/
post_views_count:
  - "107"
categories: [Orther]
tags: [Htaccess]
---
### <span id="browser-caching-la-gi" class="ez-toc-section" style="font-size: 14pt;">Caching trình duyệt như thế nào?</span>

Trình duyệt web sẽ lưu cache dữ liệu tĩnh (text, html, hình ảnh, css, js…) lại trên RAM hoặc ổ đĩa cứng khi lần tải web đầu tiên và sử dụng lại trong các lần tải tiếp theo.

Như vậy sẽ không phải request tới server để lấy dữ liệu làm cho website load nhanh hơn và còn tiết kiệm băng thông và khả năng chịu tải cho server.

**Đặt đoạn mã dưới vào file .htaccess của trang web**

```
&lt;ifModule mod_expires.c&gt;
	ExpiresActive On
	ExpiresDefault "access plus 7 days"
	ExpiresByType text/html "access plus 7 days"
	ExpiresByType image/gif "access plus 1 years"
	ExpiresByType image/jpg "access plus 1 years"
	ExpiresByType image/jpeg "access plus 1 years"
	ExpiresByType image/png "access plus 1 years"
	ExpiresByType image/x-icon "access plus 1 years"
	ExpiresByType text/css "access plus 1 month"
	ExpiresByType application/pdf "access plus 1 month"
	ExpiresByType text/javascript "access plus 1 month"
	ExpiresByType application/x-javascript "access plus 1 month"
	ExpiresByType application/x-shockwave-flash "access plus 1 month"
&lt;/ifModule&gt;
```