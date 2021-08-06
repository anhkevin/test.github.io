---
id: 803
title: Vue.js Filter (bộ lọc)
date: 2020-02-17T14:19:56+07:00
author: Ime Share
excerpt: Vue cho phép định nghĩa các filter trong các định dạng văn bản thường gặp
layout: post
permalink: /vue-js-filter-bo-loc/
post_views_count:
  - "134"
categories: [JavaScript]
tags: [Vue]
---
Vue cho phép định nghĩa các **filter** trong các định dạng văn bản hiển thị.  
Filter được đặt ở cuối một biểu thức JavaScript, biểu thị bằng kí hiệu |

Để hiểu rõ hơn đi tìm hiểu thứ tự theo ví dụ dưới.

**Ví dụ 1:** hiển thị tên name sau chữ Hi 

```html
&lt;div id="app"&gt;
  &lt;p&gt;Hi {{ name }}!&lt;/p&gt;
&lt;/div&gt;

&lt;script&gt;
new Vue ({
  el: '#app',
  data: {
    name: 'ABC'
  }
})
&lt;/script&gt;
```

Kết quả như sau: Hi ABC -> ví dụ trên chưa sử dụng filter

Nếu bạn muốn kiểm tra xem name có chứa giá trị hay không và không có thì hiển thị ra chữ &#8220;there&#8221; => Hi there  
Sử dụng filters &#8220;fallback&#8221; như bên dưới:

```html
&lt;div id="app"&gt;
  &lt;p&gt;Hi {{ name | fallback }}!&lt;/p&gt;
&lt;/div&gt;

&lt;script&gt;
new Vue ({
  el: '#app',
  data: {
    name: 'ABC'
  },
  filters: {
    fallback: function(name) {
      return name ? name : 'there'
    }
  }
})
&lt;/script&gt;
```

Ví dụ trên sử dụng cú pháp để áp dụng filters là &#8220;**| filterName**&#8220;.

**Ví dụ 2:** In hoa chữ cái đầu tiên của một text

```html
&lt;div id="app"&gt;
  &lt;p&gt;{{ message | capitalize }}&lt;/p&gt;
&lt;/div&gt;

&lt;script&gt;
new Vue ({
  el: '#app',
  data: {
    message: 'this is text'
  },
  filters: {
    capitalize: function (value) {
      if (!value) return ''
      value = value.toString()
      return value.charAt(0).toUpperCase() + value.slice(1)
    }
  }
})
&lt;/script&gt;
```

ví dụ trên sử dụng một filter được đặt tên là capitalize

Ngoài ra có thể định nghĩa ở cấp toàn cục trước khi khởi tạo một đối tượng Vue như sau:

```html
Vue.filter('capitalize', function (value) {
  if (!value) return ''
  value = value.toString()
  return value.charAt(0).toUpperCase() + value.slice(1)
})
```