---
id: 361
title: Một số lệnh Command Line của MySQL nên biết!
date: 2019-10-27T18:25:31+07:00
author: Ime Share
layout: post
permalink: /mot-so-lenh-command-line-cua-mysql-nen-biet/
post_views_count:
  - "78"
categories: [SQL]
tags: [MySQL]
---
#### <span style="color: #000000;">Một số lệnh Command Line thao tác với MySQL</span>

Đăng nhập MySQL bạn dùng lệnh: mysql -u root -p  
**1. Truy cập Mysql**  
&#8211; Đăng nhập MySQL với tài khoản root bỏ qua nhập pass

```
mysql -u root
```

&#8211; Đăng nhập MySQL với tài khoản root và nhập pass

```
mysql -u root -p
```

**2. Thao tác database**  
&#8211; Hiển thị danh sách database

```
mysql> SHOW DATABASES;
```

&#8211; Tạo database

```
mysql> CREATE DATABASE database_name;
```

&#8211; Xóa database

```
mysql> DROP DATABASE database_name;
```

&#8211; Truy cập vào database

```
mysql> USE database_name;
```

&#8211; Hiển thị toàn bộ table

```
mysql> USE database_name;// Phải truy cập vào database trước nếu chưa truy cập
mysql> SHOW TABLES;
```

**3. Thao tác sao lưu và phục hồi**  
&#8211; Sao lưu toàn bộ database

```
mysql> mysqldump -u root -ppassword --all-databases >  bk_all_databases.sql
```

&#8211; Sao lưu một database

```
mysql> mysqldump -u root -ppassword database_name >  bk_database_name.sql
```

&#8211; Sao lưu cấu trúc database (không có data)

```
mysql> mysqldump --no-data --databases database_name1 database_name2 >  backup_structure.sql
```

&#8211; Sao lưu cấu trúc một số table của database

```
mysql> mysqldump --add-drop-table -u root -ppassword database_name table_1 table_2 >  backup_table.sql
```

&#8211; Khôi phục toàn bộ database từ file backup

```
mysql> mysql -u root -ppassword >  bk_all_databases.sql
```

&#8211; Khôi phục một database bất kỳ từ file backup

```
mysql> mysql -u root -ppassword database_name >  bk_database.sql
```

**4. Quản lý tài khoản và phân quyền**  
&#8211; Hiển thị toàn bộ users

```
mysql> SELECT * FROM mysql.user;
```

&#8211; Gán full quyền cho một user trên tất cả database

```
mysql> GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' 
IDENTIFIED BY 'password' WITH GRANT OPTION;
```

&#8211; Gán full quyền cho một user trên một database

```
mysql> GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost' 
IDENTIFIED BY 'password' WITH GRANT OPTION;
```

&#8211; Phân quyền chi tiết cho một user

```
mysql> GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES 
ON database_name.* TO 'username'@'localhost' IDENTIFIED BY 'password';
```

&#8211; Thay đổi mật khẩu user

```
mysql> UPDATE mysql.user SET password=PASSWORD("new_pass") WHERE User='username';
```

<span style="color: #800000;"><strong>=> Để các thay đổi trên được thực hiện ngay lập tức hãy thực hiện lệnh dưới</strong></span>

```
mysql> FLUSH PRIVILEGES;
```