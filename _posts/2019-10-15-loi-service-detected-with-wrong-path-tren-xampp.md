---
id: 294
title: 'Lỗi *Service detected with wrong path* trên Xampp'
date: 2019-10-15T02:48:58+07:00
author: Ime Share
excerpt: |
  Lỗi không tìm được path trên Xampp
  - Apache Service detected with wrong path
  - MySQL Service detected with wrong path
layout: post
permalink: /loi-service-detected-with-wrong-path-tren-xampp/
post_views_count:
  - "158"
categories: [Orther]
tags: [Xampp]
---
**Lỗi không tìm được path trên Xampp**  
&#8211; Apache Service detected with wrong path  
&#8211; MySQL Service detected with wrong path

**Cách xử lý:**  
**1. Lỗi: Apache Service detected with wrong path**  
Bước 1: bấm tổ hợp phím **Win + R** và gõ **regedit** rồi ấn **enter**  
Bước 2: Tìm đến đường dẫn: **HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\Apache2.4**  
Bước 3: Trên đường dẫn tìm cột **ImagePath**, nhấn chuột phải và chọn **Modify**  
Thay đổi đường dẫn: **&#8230;/apache/bin/httpd.exe** thành đường dẫn Xampp bạn muốn => Xong

**2. Lỗi: MySQL Service detected with wrong path**  
Bước 1: bấm tổ hợp phím **Win + R** và gõ **regedit** rồi ấn **enter**  
Bước 2: Tìm đến đường dẫn: **HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\mysql**  
Bước 3: Trên đường dẫn tìm cột **ImagePath**, nhấn chuột phải và chọn **Modify**  
Thay đổi đường dẫn: **&#8230;/mysql/bin/mysqld.exe** thành đường dẫn Xampp bạn muốn => Xong

<div id="gtx-trans" style="position: absolute; left: -111px; top: -15px;">
  <div class="gtx-trans-icon">
  </div>
</div>