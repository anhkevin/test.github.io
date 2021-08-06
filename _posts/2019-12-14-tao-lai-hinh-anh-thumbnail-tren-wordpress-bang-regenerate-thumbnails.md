---
id: 628
title: Tạo lại hình ảnh Thumbnail trên WordPress bằng Regenerate Thumbnails
date: 2019-12-14T15:36:32+07:00
author: Ime Share
excerpt: Plugin Regenerate Thumbnails có thể giúp tạo lại hình ảnh thumbnail của tất cả hình ảnh đã up lên wordpress trên thử viện Media.
layout: post
permalink: /tao-lai-hinh-anh-thumbnail-tren-wordpress-bang-regenerate-thumbnails/
post_views_count:
  - "79"
categories: [PHP]
tags: [Wordpress]
---
<span style="font-size: 14pt;">Plugin <strong>Regenerate Thumbnails</strong> có thể giúp tạo lại hình ảnh thumbnail của tất cả hình ảnh đã up lên wordpress trên thư viện Media.</span>

<span style="font-size: 14pt;">Vậy khi nào thì sử dụng plugin <strong>Regenerate Thumbnails</strong>?</span>

Ví dụ khi thêm **add\_image\_size()** mới lúc này tất cả các ảnh cũ sẽ không có size mới thêm này, nhưng lại muốn những hình cũ cũng có size mới thì sử dụng plugin trên để tạo lại tất cả hình ảnh thumbnail.

<span style="font-size: 14pt;">Cách cài đặt và sử dụng plugin <strong>Regenerate Thumbnails</strong></span>

**Bước 1.** Cài đặt plugin tại đây: <https://wordpress.org/plugins/regenerate-thumbnails/>

**Bước 2.** Để sử dụng plugin vào: **Tools** (công cụ) > **Regenerate Thumbnails**

[<img class="aligncenter wp-image-641 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails.jpg" alt="" width="1168" height="296" srcset="https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails.jpg 1168w, https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails-300x76.jpg 300w, https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails-1024x260.jpg 1024w, https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails-768x195.jpg 768w, https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails-150x38.jpg 150w" sizes="(max-width: 1168px) 100vw, 1168px" />](https://anhkevin.github.io/assets/img/uploads/2019/12/regenerate_thumbnails.jpg)

+ **Skip regenerating existing correctly sized thumbnails (faster):** chọn cái này nếu muốn bỏ qua những hình ảnh đã tạo đầy đủ các thumbnail rồi.

+ **Delete thumbnail files for old unregistered sizes in order to free up server space. This may result in broken images in your posts and pages:** nếu chọn cái này nó sẽ xóa hết những hình ảnh thumbnail cũ đi (mình khuyên không nên xóa vì có một số bài post bạn đang sử dụng thumnail đó lưu ở trong content và khi tạo mới có thể có một số thumnail bị thay đổi file name so với file cũ)

**Bước 3.** Sau đó bấm vào **Regenerate Thumbnails For All <span style="color: #800000;">xxx</span> Attachments** để tạo lại hình ảnh thumbnail thôi => Chờ đến khi hoàn thành thôi.