---
id: 44
title: Cách thêm tên miền ảo, thiết lập Virtual Host trên Xampp
date: 2019-09-29T15:58:05+07:00
author: Ime Share
layout: post
permalink: /cach-them-ten-mien-ao-thiet-lap-virtual-host-tren-xampp/
post_views_count:
  - "163"
categories: [Orther]
tags: [Xampp, Apache]
---
<span>Thiết lập <strong>Virtual Host</strong> là cách thêm tên miền ảo trên localhost. Có rất nhiều chương trình hỗ trợ Apache, nhưng bài viết này chỉ hướng dẫn trên Xampp.</span>

<span><strong>Bước 1:</strong> Tất nhiên phải cài đặt Xampp nếu chưa cài đặt, link download: <a href="https://www.apachefriends.org/download.html">https://www.apachefriends.org/download.html</a></span>

(bài này tập trung chủ yếu cách thiết lập Virtual Host nên không hướng dẫn chi tiết cách cài đặt xampp nhé)

<span><strong>Bước 2:</strong> Trỏ domain ảo cần thiết lập về localhost</span>

<span>Vào đường dẫn: <strong>C:\Windows\System32\drivers\etc</strong> (trên window) </span>

![hosts_imeshare.png]({{ "/assets/img/uploads/2019/09/hosts_imeshare.png" | relative_url }})

<span>Mở file <strong>hosts</strong> và trỏ domain ảo về IP của localhost (ví dụ domain dưới hình là: domain.com)</span>

![domain_hosts_imeshare.png]({{ "/assets/img/uploads/2019/09/domain_hosts_imeshare.png" | relative_url }})

<span><strong>Bước 3:</strong> Cấu hình vhosts trên Xampp</span>

<span>Vào đường dẫn: <strong>C:\xampp\apache\conf\extra</strong> (do khi cài đặt Xampp đặt tên thư mục là xampp, nếu đặt tên khác thì phải thay đổi tên thư mục) và mở file <strong>httpd-vhosts</strong> lên</span>

![vhosts_imeshare.png]({{ "/assets/img/uploads/2019/09/vhosts_imeshare.png" | relative_url }})

<span>Sau đó thêm đoạn code bên dưới vào trong file:</span>

```html
<VirtualHost *:80>
	ServerAdmin webmaster@domain.com
	DocumentRoot "[SOURCE]"
	ServerName domain.com
	<Directory "[SOURCE]">
		Options FollowSymLinks
		AllowOverride All
		DirectoryIndex index.php
		Require all granted
	</Directory>
</VirtualHost>
```

<span>+<strong> VirtualHost *:80</strong>: đang sử dụng port 80 nếu Apache là port khác thì phải đổi port.</span>

<span>+ <strong>ServerAdmin</strong>: địa chỉ email của admin (Không bắt buộc).</span>

<span>+ <strong>DocumentRoot</strong>: đường dẫn của thư mục, source mà muốn domain truy cập đến</span>

<span>+ <strong>ServerName</strong>: domain ảo vừa thiết lập trên (vd: domain.com lúc nãy đã thêm)</span>

<span>+ <strong>ErrorLog</strong>: đường dẫn của file log khi có lỗi (không bắt buộc), /apache/logs là thư mục chứa file log.</span>

<span>+ <strong>CustomLog</strong>: ghi log lại tất cả các Uri mà người dùng request (không bắt buộc), /apache/logs là thư mục chứa file log.</span>

<span>+ <strong>Directory "[SOURCE]"</strong>: khai báo thư mục mà bạn muốn domain truy cập để tiến hành cấp quyền cho thư mục đó.</span>

<span>+ <strong>Options FollowSymLinks</strong>: cho phép bạn truy cập theo symbolic link (trỏ đến vị trí của file).</span>

<span>+ <strong>AllowOverride All</strong>: cho phép bạn overwrite các config bằng file htaccess.</span>

<span>+ <strong>Require all granted</strong>: cho phép tất cả các máy khác được truy cập vào thư mục đang được cấu hình</span>

<span>Bây giờ khởi động lại Apache là được, truy cập vào domain ảo vừa thiết lập để xem kết quả. </span>