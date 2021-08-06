---
id: 865
title: Vue.js component
date: 2020-02-29T21:57:22+07:00
author: Ime Share
excerpt: Component là các đối tượng Vue có thể sử dụng lại được, có thể dùng component như là một phần tử bên trong đối tượng Vue gốc được tạo bởi new Vue
layout: post
permalink: /vue-js-component/
post_views_count:
  - "89"
categories: [JavaScript]
tags: [Vue]
---
**Component** là các đối tượng Vue có thể sử dụng lại được, có thể dùng component như là một phần tử bên trong đối tượng Vue gốc được tạo bởi new Vue

Đây là ví dụ về một component trong Vue:

```html
// Định nghĩa một component với tên là "button-counter"
Vue.component('button-counter', {
  data: function () {
    return {
      count: 0
    }
  },
  template: '&lt;button v-on:click="count++"&gt;Bạn đã bấm {{ count }} lần.&lt;/button&gt;'
})
```

Sử dụng component

```html
&lt;div id="components-demo"&gt;
  &lt;button-counter&gt;&lt;/button-counter&gt;
&lt;/div&gt;

new Vue({ el: '#components-demo' })
```

Có thể tái sử dụng component bao nhiêu lần tùy ý:

```html
&lt;div id="components-demo"&gt;
  &lt;button-counter&gt;&lt;/button-counter&gt;
  &lt;button-counter&gt;&lt;/button-counter&gt;
  &lt;button-counter&gt;&lt;/button-counter&gt;
&lt;/div&gt;
```

Tham khảo code chạy thực tế: <https://codepen.io/anh-kevin/pen/rNVmJbj>