---
id: 574
title: Thiết lập Basic Authentication bằng PHP
date: 2019-12-02T02:19:48+07:00
author: Ime Share
excerpt: Xác thực truy cập cơ bản (Basic Authentication) là một trong những phương pháp xác thực đơn giản khi cần hạn chế truy cập vào một website hoặc link nào đó.
layout: post
permalink: /thiet-lap-basic-authentication-bang-php/
post_views_count:
  - "93"
categories: [PHP]
tags: [PHP]
---
Xác thực truy cập cơ bản (**Basic Authentication**) là một trong những phương pháp xác thực đơn giản khi cần hạn chế truy cập vào một website hoặc link nào đó.

<span style="font-size: 13pt;"><strong>&#8211; Thiết lập hàm basic_auth</strong></span>

```
function basic_auth($auth_list){ 
    if (isset($_SERVER['PHP_AUTH_USER']) and isset($auth_list[$_SERVER['PHP_AUTH_USER']])){
        if (md5($auth_list[$_SERVER['PHP_AUTH_USER']]) == $_SERVER['PHP_AUTH_PW']){
            return $_SERVER['PHP_AUTH_USER'];
        }
    }
 
    header('WWW-Authenticate: Basic realm="Restricted Area"');
    header('HTTP/1.0 401 Unauthorized');
    header('Content-type: text/html; charset='.mb_internal_encoding());

	exit();
}

```

<span style="font-size: 13pt;"><strong>&#8211; Sử dụng hàm này để thiết lập Basic auth</strong></span>  
+ user: admin  
+ pass: password (md5 = 5f4dcc3b5aa765d61d8327deb882cf99)

```
basic_auth(array("admin" => "5f4dcc3b5aa765d61d8327deb882cf99"));

```

<span style="font-size: 13pt;"><strong>&#8211; Hạn chế những IP cố định hiển thị Basic auth</strong></span>

```
if(!in_array($_SERVER['REMOTE_ADDR'], array("1.1.1.1", "2.2.2.2"))){
      basic_auth(array("admin" => "5f4dcc3b5aa765d61d8327deb882cf99"));
}

```

<div>
</div>