---
id: 75
title: Xóa menu ngang trên thanh Admin bar WordPress
date: 2019-09-30T07:27:29+07:00
author: Ime Share
layout: post
permalink: /xoa-menu-ngang-tren-thanh-admin-bar/
post_views_count:
  - "208"
categories: [PHP]
tags: [Wordpress]
---
**Admin bar** là một khu vực ở trên cùng của màn hình được hiển thị cho người dùng đã đăng nhập vào WordPress. Đây là một thanh ngang dài có chứa các phím tắt tới các phần khác nhau của màn hình WordPress admin.

<img class="aligncenter wp-image-84 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/09/hide_admin_bar_imeshare.png" alt="" width="752" height="34" srcset="https://anhkevin.github.io/assets/img/uploads/2019/09/hide_admin_bar_imeshare.png 752w, https://anhkevin.github.io/assets/img/uploads/2019/09/hide_admin_bar_imeshare-300x14.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/09/hide_admin_bar_imeshare-150x7.png 150w" sizes="(max-width: 752px) 100vw, 752px" /> 

Để xóa menu trên thanh **admin bar** sử dụng action: **wp\_before\_admin\_bar\_render**

```
<?php

function remove_menu_in_admin_bar() { 
	global $wp_admin_bar; 
	
	// Xóa menu: 
	$wp_admin_bar->remove_menu('NAME_MENU'); //Một số menu mặc định 
	$wp_admin_bar->remove_menu('wp-logo'); // Remove the WordPress logo 
	$wp_admin_bar->remove_menu('about'); // Remove the about WordPress link 
	$wp_admin_bar->remove_menu('wporg'); // Remove the WordPress.org link 
	$wp_admin_bar->remove_menu('documentation'); // Remove the WordPress documentation link 
	$wp_admin_bar->remove_menu('support-forums'); // Remove the support forums link 
	$wp_admin_bar->remove_menu('feedback'); // Remove the feedback link 
	$wp_admin_bar->remove_menu('site-name'); // Remove the site name menu 
	$wp_admin_bar->remove_menu('view-site'); // Remove the view site link 
	$wp_admin_bar->remove_menu('updates'); // Remove the updates link 
	$wp_admin_bar->remove_menu('comments'); // Remove the comments link 
	$wp_admin_bar->remove_menu('new-content'); // Remove the content link 
	$wp_admin_bar->remove_menu('my-account'); // Remove the user details tab 
} 
add_action( 'wp_before_admin_bar_render', 'remove_menu_in_admin_bar' );

```

<span style="color: #ff0000;"><strong>Lưu ý:</strong></span> Cách nhận biết **NAME_MENU**

**B1.** Nhấn chuột phải vào thanh admin bar và bấm inspect (hoặc bấm Ctrl + Shift + I)

**B2.** Dò đến đoạn html của thanh admin bar và chú ý có đoạn <span style="color: #333399;"><li id=&#8221;wp-admin-bar-<strong>xxxxx</strong>&#8221; &#8230;..</span> .**xxxxx** chính là <span class="st_h">NAME_MENU. </span>  
<img class="aligncenter wp-image-85 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/09/viewcode_hide_admin_bar_imeshare.png" alt="" width="466" height="306" srcset="https://anhkevin.github.io/assets/img/uploads/2019/09/viewcode_hide_admin_bar_imeshare.png 466w, https://anhkevin.github.io/assets/img/uploads/2019/09/viewcode_hide_admin_bar_imeshare-300x197.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/09/viewcode_hide_admin_bar_imeshare-150x98.png 150w" sizes="(max-width: 466px) 100vw, 466px" /> 

**B3.** Sử dụng hàm trên với <span class="st_h">NAME_MENU</span> vừa tìm ở B2 => Thế là xong

<div id="gtx-trans" style="position: absolute; left: 173px; top: 102.422px;">
  <div class="gtx-trans-icon">
  </div>
</div>