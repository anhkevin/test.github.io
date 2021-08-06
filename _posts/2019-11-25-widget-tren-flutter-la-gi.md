---
id: 539
title: Widget trên Flutter là gì?
date: 2019-11-25T15:33:07+07:00
author: Ime Share
excerpt: Widget giúp tạo các ứng dụng đẹp nhanh hơn với bộ sưu tập các vật dụng trực quan, cấu trúc, nền tảng và tương tác của Flutter.
layout: post
permalink: /widget-tren-flutter-la-gi/
post_views_count:
  - "134"
categories: [Orther]
tags: [Flutter]
---
**<span style="font-size: 13pt;">Widget miêu tả một phần của giao diện người dùng. Tất cả các component như text, image, button hay animation, theme, layout hay thậm chí app cũng là 1 widget. Trong Flutter tất cả các widget hay giao diện đều được code bằng dart</span>**

Khi một **widget** thay đổi trạng thái, chẳng hạn như do người dùng click hay animation, widget sẽ tự xây dựng lại theo trạng thái mới. Điều này tiết kiệm thời gian của nhà phát triển bởi vì UI có thể được mô tả như là một state functions. Ta không phải viết thêm code để chỉ update UI khi state change.

**Widget** giúp tạo các ứng dụng đẹp nhanh hơn với bộ sưu tập các vật dụng trực quan, cấu trúc, nền tảng và tương tác của Flutter.

**Một số loại Widget cơ bản thường dùng:**  
&#8211; **Appbar** Thanh ứng dụng  
&#8211; **Text** hiển thị label text  
&#8211; **Column** sắp xếp các widget con trong một ngăn xếp dọc  
&#8211; **Icon** hiển thị icon dựng sẵn  
&#8211; **Image** hiển thị hình ảnh  
&#8211; **Button** Flutter không có tiện ích trực tiếp Button , mà thay vào đó nó có các loại nút như FlatButton và RaisedButton.  
&#8211; **Row** xây dựng hàng nằm ngang  
&#8211; **Scaffold** là một widget cha nằm ngoài cùng của page, nó tạo ra layout cơ bản chứa Appbar, Navigation, Drawers, Floating Action Buttons, Bottom Navigation, &#8230;.  
&#8230;

**Chi tiết truy cập:** <https://flutter.dev/docs/development/ui/widgets>

&nbsp;

**Ví dụ cơ bản về Widget:**

[<img class="aligncenter wp-image-548 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog.png" alt="" width="797" height="611" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog.png 797w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog-300x230.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog-768x589.png 768w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog-150x115.png 150w" sizes="(max-width: 797px) 100vw, 797px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-widget-base-ime-share-blog.png)

File: main.dart

```
import 'package:flutter/material.dart';

void main()=&gt;runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello World"),
          ),
          body: Center(
            child: Column(
                children: &lt;Widget&gt;[
                  new Text(
                    "Ime Share",
                    style: new TextStyle(fontSize:29.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        height: 5,
                        fontFamily: "Roboto"),
                  ),

                  new Image.network(
                    'https://anhkevin.github.io/assets/img/main/logo-anhkevin.png',
                    fit:BoxFit.fill,
                  ),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: &lt;Widget&gt;[
                        new Icon(
                            Icons.account_balance,
                            color: const Color(0xFF000000),
                            size: 48.0),

                        new Icon(
                            Icons.add_alert,
                            color: const Color(0xFF000000),
                            size: 48.0),

                        new Icon(
                            Icons.airplanemode_active,
                            color: const Color(0xFF000000),
                            size: 48.0),

                        new Icon(
                            Icons.cancel,
                            color: const Color(0xFF000000),
                            size: 48.0)
                      ]

                  )
                ]
            )
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(Icons.favorite),
          ),
        )
    );
  }
}
```