---
id: 216
title: Css font-size dạng % trong element (before, after) bị lỗi trên IE
date: 2019-10-11T16:14:57+07:00
author: Ime Share
layout: post
permalink: /css-font-size-dang-trong-before-va-after-bi-loi-tren-ie/
post_views_count:
  - "64"
categories: [HTML & CSS]
tags: [CSS]
---
**Vấn đề:** Mình từng fix 1 lỗi khá khó chịu cho khách hàng trên IE đó là khi viết **element:before** hoặc **element:after** chứa **font-size** là **%** nhưng trên css có nhiều chỗ **font-size %** cho cùng 1 element thì trên IE nó tính font-size cho element đó bằng cách nhân lên từng đó số lần %

**Xem ví dụ dưới dễ hiểu hơn:**  
**<span style="color: #800000;">&#8211; Html</span>**

```html
&lt;h1&gt;Money&lt;/h1&gt;
```

**<span style="color: #800000;">&#8211; Css</span>**

```html
h1 {
	font-size: 100px;
}
h1:after {
	content: '($)';
	font-size: 60%;
}
h1:after {
	font-size: 60%;
}
```

**&#8211; Kết quả hiển thị html trên là:** <span style="color: #800000;">Money($)</span>

<span style="font-size: 13pt;"><strong>Vậy câu hỏi đặt ra là: dấu <span style="color: #800000;">($)</span> lúc này có giá trị font-size là bao nhiêu?</strong></span>  
+ Trình duyệt chrome, firefox có font-size: 100px * 60% = 60px  
+ Trình duyệt IE có font-size: 100px \* 60% \* 60% = 36px

Có thể thấy cách tính khác biệt của thằng IE rồi đấy nó ko ghi đè lên mà nó nhân lên số lần viết css là % như vậy

**Giải pháp:** viết css font-size cho **element:before** hoặc **element:after** nên viết ở dạng cố định px, em,&#8230;.