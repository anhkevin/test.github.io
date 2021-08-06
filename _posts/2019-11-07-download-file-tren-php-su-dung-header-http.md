---
id: 461
title: Download file trên PHP sử dụng header http
date: 2019-11-07T08:45:56+07:00
author: Ime Share
excerpt: Có thể tải trực tiếp một file có định dạng khác nhau xuống máy tính của người dùng bằng hàm readfile() của PHP thông qua header http
layout: post
permalink: /download-file-tren-php-su-dung-header-http/
post_views_count:
  - "68"
categories: [PHP]
tags: [PHP]
---
Có thể tải trực tiếp một file có định dạng khác nhau xuống máy tính của người dùng bằng hàm readfile() của PHP thông qua header http

**Đoạn mã dưới có thể áp dụng để download file trong PHP:**

```
function download_file_by_path($file_path) {
    if(file_exists($file_path)) {
        // HTTP header
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="'.urldecode(basename($file_path)).'"');
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file_path));
        ob_clean(); // Clean the output buffer
        flush(); // Flush system output buffer
        readfile($file_path);
        exit;
    }
}
```