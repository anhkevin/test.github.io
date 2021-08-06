---
id: 934
title: Cài đặt và thiết lập Cron Job trên Linux
date: 2020-04-14T20:19:37+07:00
author: Ime Share
layout: post
permalink: /cai-dat-va-thiet-lap-cron-job-tren-linux/
post_views_count:
  - "75"
categories: [Orther]
tags: [Linux]
---
**Cron Job** là chương trình lập lịch tự động trong hệ thống Linux, để chạy 1 ứng dụng, thực thi 1 script… Với Cron Job bạn có thể lập lịch chạy tại 1 thời điểm nhất định, mỗi giờ (daily), mỗi ngày (daily) &#8230;

**Lệnh cơ bản hay dùng:**

<li style="display: list-item;">
  crontab -l: Xem danh sách các task đã được lên lịch
</li>
<li style="display: list-item;">
  crontab -r: Xóa toàn bộ các task đã được lên lịch
</li>
<li style="display: list-item;">
  crontab -e: Chỉnh sửa file crontab
</li>

Ngoài ra crontab -h sẽ hiện hướng dẫn các lệnh còn lại.

### <span id="cai-dat-crobtab">Cài đặt Crobtab</span>

Để cài đặt crontab trên Linux cũng rất đơn giản, chỉ một câu lệnh là xong.

**Trên Ubuntu/Debian:**

```
sudo apt-get install cron
```

**Trên CentOS/Red Hat Linux:**

```
yum install cronie
```

Sau khi cài đặt xong, thử kiểm tra xem nó đã cài đặt thành công rồi hay chưa bằng lệnh:

```
service crond status
```

Nếu output như dưới đây thì là OK.

<span style="color: #808080;"><span class="kw1">crond</span> <span class="br0">(</span><span class="">pid </span><span class="nu0">4370</span><span class="br0">)</span><span class=""> is running&#8230;</span></span>

Nếu crontab vẫn chưa chạy thì bạn tự khởi động crontab và thiết lập tự động chạy mỗi khi reboot như sau:

```
service crond start
chkconfig crond on
```

### <span id="cai-dat-crobtab">Thiết lập chạy Crobtab</span>

**Bước 1**: Vào file quản lý crontab bằng lệnh:

```
crontab -e
```

**Bước 2**: Thiết lập theo cú pháp bên dưới và thêm vào cuối file crontab

```
SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root

# For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
```

Sau khi thêm xong: bấm Esc -> nhấp Enter và gõ **:wq** (write and quit)

**Bước 3**: restart lại là xong

```
service crond restart
```