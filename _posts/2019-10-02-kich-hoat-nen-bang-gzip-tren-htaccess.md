---
id: 114
title: Kích hoạt nén bằng gzip trên htaccess
date: 2019-10-02T15:29:41+07:00
author: Ime Share
layout: post
permalink: /kich-hoat-nen-bang-gzip-tren-htaccess/
post_views_count:
  - "109"
categories: [Orther]
tags: [Htaccess]
---
**Gzip** là một phương pháp nén tập tin hay tìm những chuỗi tương tự nhau trong file text và thay thế những chuỗi đó bằng ký tự ngắn gọn hơn, kết quả là sẽ giúp file nhỏ hơn.

**Hoạt động:** server gửi xuống trình duyệt dưới dạng gzip và trình duyệt giải nén các file gzip, chuyển chúng về dạng nguyên gốc.

Nén Gzip rất có ích của cho môi trường web vì HTML, CSS files sử dụng rất nhiều chữ và khoảng trống. Vì vậy kết quả cuối cùng sau khi gzip nén file, kích thước của trang và CSS có thể giảm tới 60-70%.

<span style="color: #ff0000;"><strong>CHÚ Ý:</strong></span> Gzip tăng tốc độ của site của bạn, nhưng bù lại nó dùng nhiều CPU hơn. Trước khi kích hoạt nó, hãy chắc rằng tài nguyên CPU ổn định.

#### **Thêm đoạn dưới vào file .htaccess**

**Bật nén gzip thông qua `mod_deflate`:**

```
&lt;IfModule mod_deflate.c&gt;
	AddOutputFilterByType DEFLATE text/html
	AddOutputFilterByType DEFLATE text/css
	AddOutputFilterByType DEFLATE text/javascript
	AddOutputFilterByType DEFLATE text/xml
	AddOutputFilterByType DEFLATE text/plain
	AddOutputFilterByType DEFLATE image/x-icon
	AddOutputFilterByType DEFLATE image/svg+xml
	AddOutputFilterByType DEFLATE application/rss+xml
	AddOutputFilterByType DEFLATE application/javascript
	AddOutputFilterByType DEFLATE application/x-javascript
	AddOutputFilterByType DEFLATE application/xml
	AddOutputFilterByType DEFLATE application/xhtml+xml
	AddOutputFilterByType DEFLATE application/x-font  
	AddOutputFilterByType DEFLATE application/x-font-truetype  
	AddOutputFilterByType DEFLATE application/x-font-ttf  
	AddOutputFilterByType DEFLATE application/x-font-otf
	AddOutputFilterByType DEFLATE application/x-font-opentype
	AddOutputFilterByType DEFLATE application/vnd.ms-fontobject
	AddOutputFilterByType DEFLATE font/ttf
	AddOutputFilterByType DEFLATE font/otf
	AddOutputFilterByType DEFLATE font/opentype
	# For Older Browsers Which Can’t Handle Compression
	BrowserMatch ^Mozilla/4 gzip-only-text/html
	BrowserMatch ^Mozilla/4\.0[678] no-gzip
	BrowserMatch \bMSIE !no-gzip !gzip-only-text/html
&lt;/IfModule&gt;
```

**Nếu server bạn không hỗ trợ mod_deflate thì sử dụng `mod_gzip`:**

```
&lt;ifModule mod_gzip.c&gt;
	mod_gzip_on Yes
	mod_gzip_dechunk Yes
	mod_gzip_item_include file .(html?|txt|css|js|php|pl)$
	mod_gzip_item_include handler ^cgi-script$
	mod_gzip_item_include mime ^text/.*
	mod_gzip_item_include mime ^application/x-javascript.*
	mod_gzip_item_exclude mime ^image/.*
	mod_gzip_item_exclude rspheader ^Content-Encoding:.*gzip.*
&lt;/ifModule&gt;
```

Có thể kiểm tra trang web bật Gzip chưa bằng cách nhấn F12 trên web:  
<img class="aligncenter wp-image-124 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip.png" alt="" width="1198" height="487" srcset="https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip.png 1198w, https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip-300x122.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip-768x312.png 768w, https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip-1024x416.png 1024w, https://anhkevin.github.io/assets/img/uploads/2019/10/content_encoding_gzip-150x61.png 150w" sizes="(max-width: 1198px) 100vw, 1198px" />