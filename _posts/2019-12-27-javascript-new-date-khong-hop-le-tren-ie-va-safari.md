---
id: 729
title: Javascript new Date không hợp lệ trên IE và Safari
date: 2019-12-27T07:15:27+07:00
author: Ime Share
excerpt: 'Trong Javascript có cung cấp một đối tượng xử lý thời gian là <strong>new Date()</strong>, đây là đối tượng sử dụng rất nhiều để xử lý thời gian ngoài frontend.'
layout: post
permalink: /javascript-new-date-khong-hop-le-tren-ie-va-safari/
post_views_count:
  - "113"
categories: [JavaScript]
tags: [JavaScript]
---
Trong Javascript có cung cấp một đối tượng xử lý thời gian là **new Date()**, đây là hàm được cho là sử dụng rất nhiều để xử lý thời gian ngoài frontend.

Tôi đã từng gặp phải một lỗi với IE và Safari khi tôi đang làm việc với hàm **Date()** của JavaScript.  
**Hàm có nội dung như sau:**

```html
<script type="text/javascript">
	var valDate = "2019-12-26 20:10:06";
	var getDate = new Date(valDate);
</script>
```

&#8211; Đoạn code trên chạy trên Chrome thì chạy OK  
&#8211; Nhưng khi chạy trên IE và Safari thì bị lỗi &#8220;Invalid Date&#8221; or &#8220;NaN&#8221;

**Kinh nghiệm:** Không nên sử dụng format &#8220;yyyy-mm-dd hh:mm:ss&#8221; cho hàm **new Date()** của Javascript

**Giải pháp:** Ngày và giờ cho phân cách bằng chữ T đó là yyyy-mm-ddThh:mm:ss

```html
<script type="text/javascript">
	var valDate = "2019-12-26T20:10:06";
	var getDate = new Date(valDate);
</script>
```

=> Nó đã hoạt động OK với format trên trong các trình duyệt IE, Safari, Chrome, Firefox.