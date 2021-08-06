---
id: 560
title: StatelessWidget và StatefulWidget trong Flutter là gì?
date: 2019-11-30T16:47:53+07:00
author: Ime Share
excerpt: Khi xây dựng ứng dụng Flutter, chúng ta thường sử dụng Widgets để dựng giao diện. Khi đó có 2 loại để dựng là statteful và stateless.
layout: post
permalink: /statelesswidget-va-statefulwidget-trong-flutter-la-gi/
post_views_count:
  - "280"
categories: [Orther]
tags: [Flutter]
---
**StatelessWidget** và **StatefulWidget** là gì?

<span style="font-size: 14pt;"><strong>1. StatefulWidget</strong></span>

&#8211; **StatefulWidget** là đối tượng lưu trữ các widget có trạng thái (state), nó có thể được cập nhật trong thời gian chạy dựa trên hành động của người dùng hoặc thay đổi dữ liệu.  
Khi **Flutter** xây dựng **StatefulWidget**, nó sẽ tạo một đối tượng Trạng thái. Đối tượng này là nơi giữ tất cả trạng thái có thể thay đổi cho widget đó.

**State** trong **StatefulWidget** giúp đối tượng này chỉ render lại phần giao diện nào có thay đổi mà thôi, không phải refresh lại toàn bộ cả Widget gây tốn thời gian cũng như làm hỏng cả trải nghiệm người dùng.

<span style="text-decoration: underline;"><span style="font-size: 14pt;"><strong>Cấu trúc hoạt động StatefulWidget:</strong></span></span>  
&#8211; Khi tạo một Stateful class phải **extends StatefulWidget**  
&#8211; Khi sử dụng một **StatefulWidget**, ta cần một State tương ứng với nó, và trỏ vào StatefulWidget**#createState**. Phần render giao diện sẽ do State quản lí.  
&#8211; Trong State class, để cập nhật dữ liệu được hiển thị của một Widget, cũng như những đối tượng liên quan tới một member nào đó, ta cần dùng **setState(VoidCallback)**.

[<img class="alignnone wp-image-563 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-stateful-ime-share-blog.png" alt="" width="637" height="431" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-stateful-ime-share-blog.png)

<span style="font-size: 14pt;"><strong>2. StatelessWidget</strong></span>

&#8211; **StatelessWidget** là đối tượng lưu trữ các widget không trạng thái (state), không chấp nhận sự thay đổi bên trong nó, không lưu trữ đối tượng thay đổi dữ liệu.  
**VD:** xây dựng UI có Icon, IconButton và Text.

<span style="text-decoration: underline;"><span style="font-size: 14pt;"><strong>Cấu trúc hoạt động StatelessWidget:</strong></span></span>  
&#8211; Khi tạo một Stateless class phải **extends StatelessWidget**  
&#8211; **StatelessWidget** không có State. Bản thân nó không có hàm createState, mà thay vào đó, hàm build(BuildContext) nằm trực tiếp trong nó luôn

[<img class="alignnone wp-image-563 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-stateless-ime-share-blog-1.png" alt="" width="637" height="431" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-stateless-ime-share-blog-1.png)

<div id="gtx-trans" style="position: absolute; left: -15px; top: 33px;">
  <div class="gtx-trans-icon">
  </div>
</div>