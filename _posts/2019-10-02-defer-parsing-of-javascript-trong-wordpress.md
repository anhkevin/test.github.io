---
id: 105
title: Defer Parsing of JavaScript trong WordPress
date: 2019-10-02T13:58:06+07:00
author: Ime Share
layout: post
permalink: /defer-parsing-of-javascript-trong-wordpress/
post_views_count:
  - "110"
categories: [JavaScript]
tags: [Wordpress]
---
<span style="font-size: 14pt;">Khi nào thì <strong>Defer Parsing of JavaScript</strong> cho trang web:</span>

Khi website đặt JavaScript trong thẻ **<head> </head>**  
Nên website được tải thì sẽ được đọc từ trên xuống dưới. Vì vậy, nếu bạn có nhiều JavaScript thì sẽ mất nhiều thời gian để tải nội dung trên trang (vì đọc từ trên xuống dưới nên phải tải hết mã JavaScript trên head). Do đó, muốn tăng tốc Website phải thực hiện **Defer Parsing of JavaScript**. Như vậy lúc này website sẽ được tải mà không đợi load JavaScript xong.

Tham khảo ví dụ Filter: clean_url :

```
&lt;?php

function defer_parsing_of_javascript ( $url ) { 
	if(is_admin() || 
		(FALSE === strpos( $url, '.js' )) || 
			strpos( $url, 'jquery.js' )) 
		return $url; 
	return "$url' defer "; 
} 
add_filter( 'clean_url', 'defer_parsing_of_javascript', 11, 1 );
```

Ví dụ trên có nghĩa như sau:  
+ Nếu trang admin thì giữ nguyên  
+ Nếu url không có đuôi &#8220;.js&#8221; thì giữ nguyên  
+ Nếu url là &#8220;jquery.js&#8221; thì vẫn giữ nguyên (nên giữ lại jquery để tránh lỗi liên quan js)  
+ Ngoài 2 điều kiện trên thì thêm defer vào