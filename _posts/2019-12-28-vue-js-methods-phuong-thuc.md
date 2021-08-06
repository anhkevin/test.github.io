---
id: 753
title: Vue.js Methods (phương thức)
date: 2019-12-28T17:48:16+07:00
author: Ime Share
excerpt: |
  Methods trong Vue.js là các phương thức của component
  Các phương thức có thể truyền tham số vào và có thể truy cập data dữ liệu
layout: post
permalink: /vue-js-methods-phuong-thuc/
post_views_count:
  - "141"
categories: [JavaScript]
tags: [Vue]
---
Methods trong Vue.js là các phương thức của component  
Các phương thức có thể truyền tham số vào và có thể truy cập data dữ liệu

Các phương thức trong Vue.js được định nghĩa trong thuộc tính **methods**

```html
new Vue({
  methods: {
    handleClick: function() {
      alert('test')
    }
  }
})

```

Xem ví dụ về sự kiện click sẽ gọi phương thức xử lý

```html
<div id="app">
  &lt;a @click="handleClick('Click')">Click me!&lt;/a>
  
</div>


```

Kết quả hiển thị khi nhấp chuột vào &#8220;Click me!&#8221; là: Anh, Click  
**Phân tích ví dụ trên**  
&#8211; text: là tham số  
&#8211; this.name là cách truy cập dữ liệu của name