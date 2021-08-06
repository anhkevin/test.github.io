---
id: 17
title: Ẩn, xóa menu trên WordPress
date: 2019-09-27T02:35:13+07:00
author: Ime Share
layout: post
permalink: /xoa-cac-muc-menu-tren-wordpress/
post_views_count:
  - "209"
categories: [PHP]
tags: [Wordpress]
---
**Khi code dự án sử dụng WordPress, sẽ có trường hợp bạn muốn ẩn một số menu nào đó vì một số lý do:**  
&#8211; Chức năng menu đó không sử dụng đến.  
&#8211; Khách hàng muốn ẩn Menu vì &#8230; vv.  
&#8211; &#8230;.. có hàng tá lý do, nếu bạn muốn ẩn menu trên trang quản lý wordpress  
Bạn có thể tham khảo ví dụ ẩn menu &#8220;Comments&#8221;  dưới đây:

<img class="size-medium wp-image-36 aligncenter" src="https://anhkevin.github.io/assets/img/uploads/2019/09/hide_menu_comments_imeshare-154x300.png" alt="" width="154" height="300" srcset="https://anhkevin.github.io/assets/img/uploads/2019/09/hide_menu_comments_imeshare-154x300.png 154w, https://anhkevin.github.io/assets/img/uploads/2019/09/hide_menu_comments_imeshare-77x150.png 77w, https://anhkevin.github.io/assets/img/uploads/2019/09/hide_menu_comments_imeshare.png 162w" sizes="(max-width: 154px) 100vw, 154px" /> **&#8211; Ẩn menu &#8220;Comments&#8221; trên trang Admin:**

```
&lt;?php 
function remove_menu_comment() {
	remove_menu_page( 'edit-comments.php' ); //Comments 
} 
add_action( 'admin_menu', 'remove_menu_comment' ); 
?&gt;
```

Trường hợp ẩn submenu thì sử dụng: **remove\_submenu\_page( &#8216;link menu cha&#8217;, &#8216;link của submenu&#8217; );**

Tuy nhiên cái ví dụ trên chỉ ẩn trên menu thôi, nếu gõ link trực tiếp trên browser thì vẫn truy cập được.Nếu không muốn truy cập vào đó nữa thì có thể redirect đến trang khác => tham khảo ví dụ dưới:

```
&lt;?php 
// redirect đến trang chủ admin khi vào link domain.com/wp-admin/edit-comments.php 
function restrict_admin_with_redirect() { 
	$restrictions = array( '/wp-admin/edit-comments.php' ); 
	foreach ( $restrictions as $restriction ) { 
		if ( $_SERVER['PHP_SELF'] == $restriction ) { 
			wp_redirect( admin_url() ); 
			exit; 
		} 
	} 
} 
add_action( 'admin_init', 'restrict_admin_with_redirect' ); 
?&gt;
```

**Note:** Ví dụ trên chỉ hướng dẫn xóa menu trên trang Admin thôi, các phần liên quan khác Admin thì không áp dụng.

**Ngoài ra:** xóa được, thì thêm được menu mới vào. Nhưng bài viết này chỉ hướng dẫn cách xóa thôi. Tham khảo các hàm khác liên quan tại đây: <a href="https://codex.wordpress.org/Administration_Menus" target="_blank" rel="noopener noreferrer">https://codex.wordpress.org/Administration_Menus</a>