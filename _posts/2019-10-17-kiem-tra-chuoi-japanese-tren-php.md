---
id: 316
title: Kiểm tra chuỗi Japanese trên php
date: 2019-10-17T14:48:22+07:00
author: Ime Share
layout: post
permalink: /kiem-tra-chuoi-japanese-tren-php/
post_views_count:
  - "160"
categories: [PHP]
tags: [Regex]
---
Cách sử dụng **Regular Expression** để kiểm tra input tiếng nhật trên PHP

Ở trong PHP dùng **preg_match** với các biểu thức regex để kiểm tra chuỗi nhập vào là gì

**Ví dụ:** kiểm tra chuỗi từ đầu đến cuối có phải là số hay không?

```
preg_match("/^[0-9]+$/", $input)
```

Vậy kiểm tra chuỗi trong tiếng nhập sử dụng code dưới:

```
preg_match("/^[xxx]+$/u", $input)
```

&#8211;**  /u** : để xác định chuỗi là unicode  
&#8211;**  [xxx]** : chứa các đoạn mã kiểm tra tiếng nhật  
+ **[\x{3041}-\x{3096}]** : mã kiểm tra **hiragana**  
+ **[\x{30a1}-\x{30fc}]** : mã kiểm tra **katakana**  
+ **[\x{4e00}-\x{9faf}]** : mã kiểm tra **kanji**

Ngoài ra tùy vào mục đích thì thêm những đoạn regex khác nhau vào nữa.

VD: Kiểm tra một chuỗi là chữ cái, số, hiragana, katakana và kanji

```
preg_match("/^[a-zA-Z0-9\x{3041}-\x{3096}\x{30a1}-\x{30fc}\x{4e00}-\x{9faf}]+$/u",$input)
```