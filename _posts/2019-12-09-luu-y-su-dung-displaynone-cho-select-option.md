---
id: 615
title: Lưu ý sử dụng display=none cho select.option
date: 2019-12-09T14:17:04+07:00
author: Ime Share
excerpt: Lưu ý khi sử dụng display=none cho option trong select sẽ không hoạt động trên safari của MAC và IOS
layout: post
permalink: /luu-y-su-dung-displaynone-cho-select-option/
wpb_post_views_count:
  - "1"
post_views_count:
  - "110"
categories: [HTML & CSS]
tags: [CSS]
---
<span style="color: #000000; font-size: 14pt;"><strong><span style="color: #ff0000;">Lưu ý:</span></strong> khi sử dụng <span style="color: #ff0000;">display=none</span> cho option trong select sẽ không hoạt động trên <span style="color: #ff0000;">safari</span> của <span style="color: #ff0000;">MAC</span> và <span style="color: #ff0000;">IOS</span></span>

VD dưới đây là ẩn option 2 trong select đi, nhưng nếu sử dụng display=none thì trên safari vẫn hiển thị ra

```
&lt;select&gt; 
	&lt;option&gt; option 1 &lt;/option&gt; 
	&lt;option style="display: none"&gt; option 2 &lt;/option&gt; 
	&lt;option&gt; option 3 &lt;/option&gt; 
	&lt;option&gt; option 4 &lt;/option&gt; 
	&lt;option&gt; option 5 &lt;/option&gt; 
&lt;/select&gt;
```

**Cách giải quyết:**  
**1:** Xóa option đó khỏi select nếu không muốn hiển thị, trường hợp ngược lại thì add option đó vào hoặc load lại dữ liệu trong select  
**2:** Sử dụng disabled đối với option không muốn cho chọn, lúc này sẽ không chọn được option đó nữa  
Có thể kết hợp css để ẩn luôn option đó

```
select option[disabled] { 
	display: none; 
}
```

&#8230;