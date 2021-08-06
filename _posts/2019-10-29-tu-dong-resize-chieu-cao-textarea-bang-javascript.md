---
id: 391
title: Tự động resize chiều cao textarea bằng javascript
date: 2019-10-29T03:15:12+07:00
author: Ime Share
layout: post
permalink: /tu-dong-resize-chieu-cao-textarea-bang-javascript/
post_views_count:
  - "107"
categories: [JavaScript]
tags: [JavaScript]
---
##### **<span style="color: #000000;">1. Thêm CSS cho textarea</span>**

```
textarea { 
	resize: none; 
	overflow: hidden; 
	box-sizing: border-box; 
}
```

&#8211; **resize**: none => không cho thay đổi chiều ngang textarea  
&#8211; **overflow**: hidden => làm ẩn thanh scroll  
&#8211; **box-sizing**: border-box => thiết lập cho height sẽ bao gồm cho cả phần nội dung, padding và border nhưng không bao gồm margin

##### **<span style="color: #000000;">2. Đoạn javascript xử lý thay đổi chiều cao textarea</span>**

```
var textarea = document.querySelectorAll('textarea'); 
textarea.forEach(function(item) { 
	item.style.height = item.scrollHeight + "px"; 
	if (item.clientHeight &lt; item.scrollHeight) { 
		item.style.height = (item.scrollHeight * 2 - item.clientHeight) + "px"; 
	} 
});
```

&#8211; **clientHeight**: chiều cao hiển thị tại thời điểm đó của Textarea  
&#8211; **scrollHeight**: chiều cao tối thiểu hiển thị tất cả nội dung trong Textarea mà không cần scroll  
=> Nếu hiển thị hết nội dung trong Textarea mà không cần scroll thì scrollHeight bé hơn hoặc bằng clientHeight  
(scrollHeight * 2 &#8211; clientHeight) = scrollHeight + (scrollHeight &#8211; clientHeight)

**Tham khảo ví dụ dưới:**  
<span style="color: #607d8b;"><em>(Nếu không hiển thị kết quả trong <strong>Result</strong> hãy bấm nút <strong>Rerun</strong> phía dưới)</em></span>



``