---
id: 585
title: 'Những function  &#8220;attachment image&#8221; hay dùng trên wordpress'
date: 2019-12-03T14:56:03+07:00
author: Ime Share
excerpt: 'attachment image: là những tệp hình ảnh được tải lên và lưu trữ trên wordpress bằng công cụ Media trên wordpress. Từ hình thức Media hoặc từ bài post, page, ... vv'
layout: post
permalink: /nhung-function-attachment-image-hay-dung-tren-wordpress/
post_views_count:
  - "102"
categories: [PHP]
tags: [Wordpress]
---
**attachment image**: là những tệp hình ảnh được tải lên và lưu trữ trên wordpress bằng công cụ Media trên wordpress. Từ hình thức Media hoặc từ bài post, page, &#8230; vv

**1. Lấy $attachment_id từ 1 link hình ảnh trên web**

```
attachment_url_to_postid( string $url )

```

Tham khảo: <a href="https://developer.wordpress.org/reference/functions/attachment_url_to_postid/" target="_blank" rel="noopener noreferrer">https://developer.wordpress.org/reference/functions/attachment_url_to_postid/</a>

**2. Lấy thông tin array(url, width, height, is\_intermediate) từ 1 $attachment\_id**

```
wp_get_attachment_image_src( int $attachment_id, string|array $size = 'thumbnail')

```

Tham khảo: <a href="https://developer.wordpress.org/reference/functions/wp_get_attachment_image_src/" target="_blank" rel="noopener noreferrer">https://developer.wordpress.org/reference/functions/wp_get_attachment_image_src/</a>

**3. Lấy HTML img từ 1 $attachment_id**

```
wp_get_attachment_image( int $attachment_id, string|array $size = 'thumbnail')

```

Tham khảo: <a href="https://developer.wordpress.org/reference/functions/wp_get_attachment_image/" target="_blank" rel="noopener noreferrer">https://developer.wordpress.org/reference/functions/wp_get_attachment_image/</a>

**4. Lấy $thumbnail_id của post, page**

```
get_post_thumbnail_id( int|WP_Post $post = null )

```

Tham khảo: <a href="https://developer.wordpress.org/reference/functions/get_post_thumbnail_id/" target="_blank" rel="noopener noreferrer">https://developer.wordpress.org/reference/functions/get_post_thumbnail_id/</a>

**5. Lấy thumbnail URL của post, page**

```
get_the_post_thumbnail_url( int|WP_Post $post = null, string|array $size = 'post-thumbnail' )

```

Tham khảo: <a href="https://developer.wordpress.org/reference/functions/get_the_post_thumbnail_url/" target="_blank" rel="noopener noreferrer">https://developer.wordpress.org/reference/functions/get_the_post_thumbnail_url/</a>

<div id="gtx-trans" style="position: absolute; left: -91px; top: -15px;">
  <div class="gtx-trans-icon">
  </div>
</div>