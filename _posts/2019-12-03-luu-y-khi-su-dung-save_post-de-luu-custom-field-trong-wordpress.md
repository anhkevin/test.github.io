---
id: 580
title: Lưu ý khi sử dụng save_post để lưu post meta trong wordpress
date: 2019-12-03T14:04:36+07:00
author: Ime Share
excerpt: save_post là action được kích hoạt bất cứ khi nào đăng bài mới và cập nhật post theo mọi hình thức đều sẽ đi qua action này.
layout: post
permalink: /luu-y-khi-su-dung-save_post-de-luu-custom-field-trong-wordpress/
post_views_count:
  - "87"
categories: [PHP]
tags: [Wordpress]
---
**save_post** là action được kích hoạt bất cứ khi nào đăng bài mới và cập nhật post theo mọi hình thức đều sẽ đi qua action này.

**<span style="font-size: 14pt;">Vậy vấn đề ở đây là gì?</span>**

**VD:** Sử dụng đoạn code phía dưới để thêm hay cập nhật dữ liệu post meta cho post type

```
function update_post($post_id) {
    //[START][CODING] - post meta
    $link_download = $_POST['link_download'];
    update_post_meta( $post_id, '_link_download', $link_download );
    //[END][CODING] - post meta
}
add_action( 'save_post', 'update_post' );
```

Khi đó mọi hình thức update đều vào action &#8216;save_post&#8217; này.  
Trường hợp sử dụng chức năng khác để update dữ liệu nhưng chức năng đó không có dữ liệu custom field, chẳng hạn như sử dụng chức năng &#8220;Quick edit&#8221;, &#8220;Revision&#8221; => lúc này không có dữ liệu post meta, nếu bạn chỉ get dữ liệu _POST về rồi update thì lúc này dữ liệu sẽ bị update thành dữ liệu trống

**&#8211; Trường hợp này có nhiều cách giải quyết**  
1. Kiểm tra isset trước khi xử lý

```
if(isset($_POST['link_download'])) {
...
}

```

2. Check thêm điều kiện trường hợp ở màn hình add hoặc edit mới xử lý  
&#8230;  
tùy vào mục đích thì sẽ có cách xử lý riêng

**=> Bài viết này chỉ là lưu ý khi sủ dụng save_post để cập nhật bất kỳ dữ liệu của post type.**

<div id="gtx-trans" style="position: absolute; left: 150px; top: 264px;">
  <div class="gtx-trans-icon">
  </div>
</div>