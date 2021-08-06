---
id: 504
title: Tạo Project Flutter bằng VS Code
date: 2019-11-18T14:39:50+07:00
author: Ime Share
layout: post
permalink: /tao-project-flutter-bang-vs-code/
post_views_count:
  - "274"
categories: [Orther]
tags: [Flutter]
---
**VS Code** là một trình biên tập mã tương đối nhẹ và hỗ trợ tốt, đặc biệt nó miễn phí. Trong VS Code có extension hỗ trợ Flutter.

**Bước 1**: Trên VS Code cài extension để hỗ trợ **Flutter**[<img class="aligncenter wp-image-508 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog.png" alt="" width="1075" height="236" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog.png 1075w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog-300x66.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog-768x169.png 768w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog-1024x225.png 1024w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog-150x33.png 150w" sizes="(max-width: 1075px) 100vw, 1075px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-extension-ime-share-blog.png)

**Bước 2**: Khởi động lại VS code và tạo Project  
&#8211; Nhấn Ctrl-Shift-P trên Windows.  
&#8211; Nhập vào Flutter: New Project  
&#8211; Nhập tên Project và nhấn Enter  
=> Đã tạo xong Project  
[<img class="alignnone size-full wp-image-509" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-project-ime-share-blog.png" alt="" width="215" height="290" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-project-ime-share-blog.png 215w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-project-ime-share-blog-111x150.png 111w" sizes="(max-width: 215px) 100vw, 215px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-project-ime-share-blog.png)

&#8211; Build và chạy dự án bằng cách nhấn **F5** hoặc chọn **Debug> Start Debugging**

&nbsp;

<span style="text-decoration: underline;"><span style="font-size: 14pt;"><strong>Một số lỗi thường gặp khi build</strong></span></span>

**Lỗi 1:**[  
<img class="aligncenter wp-image-512 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog.png" alt="" width="1044" height="306" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog.png 1044w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog-300x88.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog-768x225.png 768w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog-1024x300.png 1024w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog-150x44.png 150w" sizes="(max-width: 1044px) 100vw, 1044px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error-share-blog.png)  
Nếu gặp lỗi tương tự phía trên thì xóa các thư mục không có file tên là <span style="color: #ff0000;">llvm-rs-cc</span>  ở trong <span style="color: #ff0000;">C:\Users\xxx\AppData\Local\Android\Sdk\build-tools</span> và build lại

**Lỗi 2:**[<img class="aligncenter wp-image-515 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog.png" alt="" width="1020" height="177" srcset="https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog.png 1020w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog-300x52.png 300w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog-768x133.png 768w, https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog-150x26.png 150w" sizes="(max-width: 1020px) 100vw, 1020px" />](https://anhkevin.github.io/assets/img/uploads/2019/11/flutter-run-error2-share-blog.png)Do bản Android Q beta không chạy được. Nên hạ phiên bản Android xuống. Có thể tạo Virtual Device mới với phiên bản Android thấp hơn.

<div id="gtx-trans" style="position: absolute; left: 281px; top: 1236.22px;">
  <div class="gtx-trans-icon">
  </div>
</div>