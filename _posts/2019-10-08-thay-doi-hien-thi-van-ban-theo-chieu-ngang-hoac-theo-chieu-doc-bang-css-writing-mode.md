---
id: 159
title: Thay đổi hiển thị văn bản theo chiều ngang, chiều dọc bằng CSS writing-mode
date: 2019-10-08T16:16:58+07:00
author: Ime Share
layout: post
permalink: /thay-doi-hien-thi-van-ban-theo-chieu-ngang-hoac-theo-chieu-doc-bang-css-writing-mode/
post_views_count:
  - "125"
categories: [HTML & CSS]
tags: [CSS]
---
**CSS writing-mode** có thể thay đổi sự căn chỉnh của văn bản hiển thị từ trên xuống dưới hoặc từ trái sang phải hoặc từ phải sang trái, tùy thuộc vào ngôn ngữ và mục đích sử dụng.

**1. horizontal-tb: hiển thị chiều ngang từ trái sang phải, từ trên xuống dưới (đây là giá trị mặc định)**

```
writing-mode: horizontal-tb;
-ms-writing-mode: horizontal-tb;
-webkit-writing-mode: horizontal-tb;

```

**2. vertical-rl: hiển thị chiều dọc từ trên xuống dưới, từ phải sang trái**

```
writing-mode: vertical-rl;
-ms-writing-mode: vertical-rl;
-webkit-writing-mode: vertical-rl;

```

Tôi gặp một số dự án bên Nhật yêu cầu chỉnh hiển thị một số text từ trên xuống dưới từ phải sang trái, một phần do đặc trưng ngôn ngữ của họ nên hiển thị như vậy họ vẫn đọc được. Từ đó tôi biết đến **&#8220;writing-mode&#8221;**.  
**Tham khảo ví dụ dưới:**



**3. vertical-lr: hiển thị chiều dọc từ trên xuống dưới, từ trái sang phải**

```
writing-mode: vertical-lr;
-ms-writing-mode: vertical-lr;
-webkit-writing-mode: vertical-lr;

```

**4. sideways-rl: hiển thị giống (2. vertical-rl) nhưng chữ cũng bị xoay theo 90°**

```
writing-mode: sideways-rl;
-ms-writing-mode: sideways-rl;
-webkit-writing-mode: sideways-rl;

```

**5. sideways-lr: hiển thị giống (3. vertical-lr) nhưng chữ cũng bị xoay theo 90°**

```
writing-mode: sideways-lr;
-ms-writing-mode: sideways-lr;
-webkit-writing-mode: sideways-lr;

```