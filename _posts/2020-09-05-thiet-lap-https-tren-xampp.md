---
title: Thiết lập HTTPS trên XAMPP
date: 2020-09-05 21:30:00 +0700
categories: [Orther]
tags: [Xampp]
math: true
---

## 1. Tạo thư mục "crt"
`C:\xampp\apache\crt`

## 2. Thêm 2 file dưới vào thư mục "C:\xampp\apache\crt"
- [cert.conf](https://gist.github.com/anhkevin/c965d90eeb4b897f7f3b517318d05007#file-cert-conf)
- [make-cert.bat](https://gist.github.com/anhkevin/c965d90eeb4b897f7f3b517318d05007#file-make-cert-bat)

## 3. Chỉnh sửa file "cert.conf" and chạy file "make-cert.bat"
- Chỉnh sửa file cert.conf: 
Replace tất cả "{{DOMAIN}}" => domain muốn thiết lập

- Nhấp chuột để chạy file "make-cert.bat" và nhập domain vào
![make-cert.bat]({{ "/assets/img/uploads/2020/09/anhkevin_make_cert.png" | relative_url }})

## 4. Cài đặt cert trên Windows

<p>B1: Vào thư mục "C:\xampp\apache\crt\[DOMAIN]" và nhấp vào file "server.crt" và bấm [Install Certificate...]</p>
![anhkevin_install_cert.png]({{ "/assets/img/uploads/2020/09/anhkevin_install_cert.png" | relative_url }})
<p>B2: Chọn "Local Machine" để cài đặt chứng chỉ local tất cả người dùng trên máy tính hoặc chọn "Current User" để cài đặt chứng chỉ local cho tài khoản người dùng hiện tại và bấm Next</p>
![anhkevin_local_machine.png]({{ "/assets/img/uploads/2020/09/anhkevin_local_machine.png" | relative_url }})
<p>B3: Chọn "Place all certificate in the following store" -> Chọn "Trusted Root Certificate Authorities" và bấm OK</p>
![anhkevin_cert_author.png]({{ "/assets/img/uploads/2020/09/anhkevin_cert_author.png" | relative_url }})
<p>B4: Bấm "Next" và bấm "Finish" để hoàn tất</p>

## 5. Tạo Virtual Host trong Apache

```html
<VirtualHost *:80>
	DocumentRoot "[SOURCE]"
	ServerName [DOMAIN]
	<Directory "[SOURCE]">
        Options FollowSymLinks
        AllowOverride All
        DirectoryIndex index.php
        Require all granted
	</Directory>
</VirtualHost>
<VirtualHost *:443>
	DocumentRoot "[SOURCE]"
	ServerName [DOMAIN]
	SSLEngine On
	SSLCertificateFile "C:\xampp\apache\crt\[DOMAIN]\server.crt"
	SSLCertificateKeyFile "C:\xampp\apache\crt\[DOMAIN]\server.key"
    <Directory "[SOURCE]">
        Options FollowSymLinks
        AllowOverride All
        DirectoryIndex index.php
        Require all granted
    </Directory>
</VirtualHost>
```

=> Xong, refresh lại web để kiểm tra.