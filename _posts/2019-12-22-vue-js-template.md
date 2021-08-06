---
id: 735
title: Vue.js Template
date: 2019-12-22T14:47:43+07:00
author: Ime Share
excerpt: 'Vue.js sử dụng ngôn ngữ HTML tạo template. Bất kỳ HTML nào cũng sử dụng được Vue.js và ngoài ra Vue.js cung cấp hai thứ mạnh mẽ: nội suy và directive.'
layout: post
permalink: /vue-js-template/
post_views_count:
  - "108"
categories: [JavaScript]
tags: [Vue]
---
Vue.js sử dụng một cú pháp template dựa trên HTML. Tất cả các template của Vue đều là code HTML hợp lệ và có thể được parse bởi các trình duyệt và parser chuẩn. Ngoài ra Vue.js cung cấp hai thứ mạnh mẽ: nội suy và directive.  
**Note:** _muốn biết directive là gì thì xem [ở đây](https://anhkevin.github.io/vue-js-directive-tuy-bien/) còn nội suy là gì thì xem tiếp bài dưới sẽ rõ_.

&#8211; HTML hợp lệ

```html
&lt;div&gt;Hello&lt;/div&gt;
```

&#8211; Khởi tạo Vue.js có template name là app

```html
&lt;div id="app"&gt;Hello&lt;/div&gt;

&lt;script&gt;
new Vue ({
  el: '#app',
})
&lt;/script&gt;
```

&#8211; Hiển thị tên phía sau chữ Hello bằng cách sử dụng phép nội suy dữ liệu từ vue, đó là thêm data vào vue và sử dụng {{ name }} là mẫu nội suy để hiển thị dữ liệu

```html
&lt;div id="app"&gt;Hello {{ name }}&lt;/div&gt;

&lt;script&gt;
new Vue ({
  el: '#app',
  data: {
    name: 'Anh'
  }
})
&lt;/script&gt;
```

=> Lúc này html render ra là

```html
&lt;div id="app"&gt;Hello Anh&lt;/div&gt;
```

=> Và trên trình duyệt sẽ hiển thị

```html
Hello Anh
```

&nbsp;

**&#8211; Ví dụ thêm dữ liệu là html**

```html
&lt;div id="app"&gt;
    Hello {{ name }}
    &lt;div v-html = "htmlcontent"&gt;&lt;/div&gt;
&lt;/div&gt;
 
&lt;script&gt;
new Vue ({
  el: '#app',
  data: {
    name: 'Anh',
    htmlcontent : "&lt;h1&gt;Vue Js Template&lt;/h1&gt;"
  }
})
&lt;/script&gt;
```

=> Lúc này html render ra là

```html
&lt;div id="app"&gt;
    Hello Anh
    &lt;div&gt;&lt;h1&gt;Vue Js Template&lt;/h1&gt;&lt;/div&gt;
&lt;/div&gt;

```

**Note:** nếu dữ liệu data là html không thể sử dụng {{ htmlcontent }} mà phải sử dụng v-html = &#8220;htmlcontent&#8221; thì mới hiểu đó là html và render ra html được.

<span style="font-size: 13pt;">Đây là ví dụ nhằm hiểu cách khởi tạo Vue và sử dụng Vue template cơ bản.</span>