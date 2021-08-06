---
id: 147
title: Thiết lập debug php trên Visual Studio Code (VSCode)
date: 2019-12-15T13:56:16+07:00
author: Ime Share
excerpt: Xdebug là thư viện được viết ra để hỗ trợ việc tìm ra lỗi trong ứng dụng viết bằng PHP một cách hiệu quả hơn.
layout: post
permalink: /thiet-lap-debug-php-tren-visual-studio-code-vscode/
post_views_count:
  - "434"
categories: [Orther]
tags: [VSCode]
---
**Xdebug** là thư viện được viết ra để hỗ trợ việc tìm ra lỗi trong ứng dụng viết bằng PHP một cách hiệu quả hơn. Các công cụ hỗ trợ tìm ra lỗi của ứng dụng như Xdebug được gọi là debugger, đặc biệt **Xdebug** cho phép kết nối đến các IDE (như Visual Studio Code, Sublime Text, PHPStorm &#8230;) để gỡ rối mã PHP, lúc này từ IDE có thể thực hiện việc đặt các breakpoint (điểm dừng mã để trích xuất, xem các thông tin &#8230;) cũng như các thao tác Debug như : Step Into, Step Over, Restart &#8230;

# Cài đặt Xdebug PHP trên Windows

### **Bước 1.** Cài đặt **Xdebug:**   
&#8211; Download file DLL đúng phiên bản PHP đang cài đặt tại đây <https://xdebug.org/download>  
&#8211; Copy file DLL vừa download vào thư mục **C:\xampp\php\ext\**

### **Bước 2.** Thêm cấu hình Xdebug vào php.ini (\xampp\php\php.ini)

```shell
[XDebug] 
zend_extension=C:\xampp\php\ext\php_xdebug-xxx.dll 
xdebug.remote_enable = 1 
xdebug.remote_autostart = 1
```

php_xdebug-xxx.dll: là file vừa download ở bước 1

Sử dụng phpinfo() hoặc vào CMD gõ php -v để xem Xdebug đã cấu hình chưa.

### **Bước 3.** Cài đặt PHP Debug Extension trong VS Code

Link: <https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug>  
[<img class="aligncenter wp-image-653 size-full" src="https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug.jpg" alt="" width="1070" height="323" srcset="https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug.jpg 1070w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug-300x91.jpg 300w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug-1024x309.jpg 1024w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug-768x232.jpg 768w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug-150x45.jpg 150w" sizes="(max-width: 1070px) 100vw, 1070px" />](https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug.jpg)

### **Bước 4.** Add config cho project PHP và sử dụng

&#8211; Chọn hình cọn bọ và bấm vào chỗ bánh xe để add config cho project cần debug -> sau khi add xong sẽ tạo ra 1 file **launch.json** giống như bên dưới

```shell
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for Xdebug",
            "type": "php",
            "request": "launch",
            "port": 9000
        },
        {
            "name": "Launch currently open script",
            "type": "php",
            "request": "launch",
            "program": "${file}",
            "cwd": "${fileDirname}",
            "port": 9000
        }
    ]
}
```

&#8211; Bây giờ có thể đặt breakpoint và bấm vào nút mũi tên xanh để bắt đầu debug.

[<img class="wp-image-655 size-full aligncenter" src="https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3.jpg" alt="" width="1090" height="377" srcset="https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3.jpg 1090w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3-300x104.jpg 300w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3-1024x354.jpg 1024w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3-768x266.jpg 768w, https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3-150x52.jpg 150w" sizes="(max-width: 1090px) 100vw, 1090px" />](https://anhkevin.github.io/assets/img/uploads/2019/10/Xdebug3.jpg)

# Cài đặt XDebug để Remote Debug

### **Bước 1.** Cài đặt **Xdebug:**   
// Install Xdebug through PECL on Linux
```shell
pecl install Xdebug
```

Nếu PHP 5.3 thì chạy lệnh:
```shell
pecl install xdebug-2.2.7
```

### **Bước 2.** Thêm cấu hình Xdebug vào php.ini

```shell
;xDebug: Configuration starts

zend_extension = PATH_TO_LIBRARY_PHP/xdebug.so
xdebug.remote_enable = 1
; <IP Host>: Linux type command: ifconfig | grep "inet " | grep -v 127.0.0.1
; <IP Host>: Windows type command: ipconfig in cmd
xdebug.remote_host="<IP Host>"
xdebug.remote_port=9000
xdebug.profiler_output_dir = PATH_TO_PROFILER_OUTPUT_DIR
xdebug.profiler_enable = 1
xdebug.remote_log=PATH_TO_LOG/xdebug.log

; The Linux way
xdebug.remote_connect_back = 1

; idekey value is specific to VSCODE
xdebug.idekey=VSCODE

; Optional: Set to true to always auto-start xdebug
xdebug.remote_autostart = 1

;xDebug: Configuration ends
```

### **Bước 3.** Cài đặt PHP Debug Extension trong VS Code như phía trên

### **Bước 4.** ở bước này thay đổi thiết lập như sau

```shell
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "remote XDebug",
            "type": "php",
            "request": "launch",
            "program": "${file}",
            "cwd": "${fileDirname}",
            "pathMappings": {
                // server -> local
                "/var/www/html": "${workspaceRoot}/",
            },
            "port": 9000,
        }
    ]
}
```
