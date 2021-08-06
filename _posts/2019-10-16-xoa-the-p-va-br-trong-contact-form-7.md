---
id: 305
title: 'Xóa thẻ &lt;p&gt; và &lt;br&gt; trong Contact Form 7'
date: 2019-10-16T14:38:54+07:00
author: Ime Share
layout: post
permalink: /xoa-the-p-va-br-trong-contact-form-7/
post_views_count:
  - "133"
categories: [PHP]
tags: [Wordpress]
---
**Plugin Contact Form 7** là một plugin được cộng đồng wordpress sử dụng rất nhiều để tạo form trên web, form liên hệ,&#8230; plugin có hỗ trợ gửi mail và đặc biệt là miễn phí  
Nhưng khi sử dụng **plugin Contact Form 7** mặc định tự động tạo thêm thẻ <span style="color: #800000;"><strong><p></strong></span> và <span style="color: #800000;"><strong><br></strong></span> trên form làm ảnh hưởng đến giao diện đã thiết kế trước đó.

Dưới đây là cách tắt tính năng tự động thêm đó, bằng cách thêm đoạn mã dưới vào file **wp-config.php**

```
define('WPCF7_AUTOP', false );
```

<div id="gtx-trans" style="position: absolute; left: 236px; top: 175px;">
  <div class="gtx-trans-icon">
  </div>
</div>