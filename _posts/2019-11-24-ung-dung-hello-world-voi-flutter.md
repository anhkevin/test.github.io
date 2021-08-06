---
id: 519
title: Ứng dụng Hello World với Flutter
date: 2019-11-24T06:53:37+07:00
author: Ime Share
excerpt: Ứng dụng Hello World đầu tiên giúp ta bước đầu làm quen với Flutter để bắt đầu hành trình tu luyện các tầng cao hơn về Flutter.
layout: post
permalink: /ung-dung-hello-world-voi-flutter/
post_views_count:
  - "141"
categories: [Orther]
tags: [Flutter]
---
Xóa hết nội dụng ở file <span style="color: #ff0000;">lib/main.dart</span> và gõ đoạn code phía dưới vào

```
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

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
            child: Text("Content Body"),
          )
        )
    );
  }
}
```

<span style="font-size: 14pt;"><strong>Cùng xem xét đoạn code phía trên có gì?</strong></span>

```
import 'package:flutter/material.dart';
```

=> Import thư viện Material design

&nbsp;

```
void main()=>runApp(MyApp());
```

=> Đây là phương thức gọi để run ứng dụng

&nbsp;

```
class MyApp extends StatelessWidget
```

=> Mỗi thành phần của Flutter có thể là một StatelessWidget hoặc một StatefulWidget. StatefulWidget có một đối tượng State liên kết với nó, cho phép nó không chỉ lưu trữ dữ liệu, mà còn để phản ứng với những thay đổi trong dữ liệu. StatelessWidget là một đối tượng đơn giản, không được thiết kế để lưu trữ cố định bất kỳ dữ liệu nào.  
<span style="color: #999999;"><em>Chi tiết về StatelessWidget và StatefulWidget xem thêm</em></span> <a style="color: red;" href="https://anhkevin.github.io/statelesswidget-va-statefulwidget-trong-flutter-la-gi/"><span style="color: #993300;">tại đây</span></a>.

```
@override
  Widget build(BuildContext context) 
```

=> Override phương thức build để bắt đầu tạo ra giao diện người dùng của ứng dụng.

&nbsp;

```
return MaterialApp
```

=> Đây là khởi tạo để áp dụng thiết kế Material design cho ứng dụng

&nbsp;

```
title: "Demo App"
```

=> Tiêu đề của App

&nbsp;

```
home: Scaffold
```

=> home là trang chủ. Scaffold là layout có sẵn cung cấp appBar, &#8230;

&nbsp;

```
appBar: AppBar(
            title: Text("Hello World"),
          ),

```

=> Tạo title cho app bar

&nbsp;

```
body: Center(
            child: Text("Content Body"),
          )

```

=> Bên dưới app bar hiển thị 1 body. Body ở đây ta thiết lập ví trị center và đặt một text ở thằng child

<span style="font-size: 14pt;"><strong>Kết quả khi build đoạn code trên:</strong></span>  
[<img class="aligncenter wp-image-521 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-hello-work-share-blog.png" alt="" width="689" height="415" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-hello-work-share-blog.png 689w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-hello-work-share-blog-300x181.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-hello-work-share-blog-150x90.png 150w" sizes="(max-width: 689px) 100vw, 689px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-hello-work-share-blog.png)