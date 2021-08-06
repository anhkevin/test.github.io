---
title: Cài đặt SSL trên Amazon Lightsail sử dụng bncert Bitnami
date: 2021-07-07 21:30:00 +0700
categories: [Orther]
tags: [Amazon]
math: true
---

Để thực hiện các bước thiết lập bên dưới yêu cầu đã cài đặt web trong Amazon Lightsail thành công

## Bước 1. Truy cập [Lightsail](https://lightsail.aws.amazon.com/) để đăng nhập tài khoản
## Bước 2. Chọn kết nối SSH như hình
![Chọn kết nối SSH]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami.PNG" | relative_url }})
## Bước 3. Sau khi kết nối SSH thì mở màn hình Terminal
- Nhập lệnh dưới để chạy bncert
```shell
sudo /opt/bitnami/bncert-tool
```
![anhkevin_sll_bitnami_1.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_1.PNG" | relative_url }})
=> nhập "Y" để cập nhật version

- Nhập domain cần thiết lập
![anhkevin_sll_bitnami_2.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_2.PNG" | relative_url }})

- Trường hợp muốn thiết lập cho cả www.domain thì chọn Y như hình
![anhkevin_sll_bitnami_3.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_3.PNG" | relative_url }})

- Thiết lập tự động chuyển HTTP sang HTTPS
![anhkevin_sll_bitnami_4.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_4.PNG" | relative_url }})

- Nó liệt kê danh sách quá trình cài đặt => đồng ý "nhập Y" để bắt đầu
![anhkevin_sll_bitnami_5.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_5.PNG" | relative_url }})
=> Trường hợp hiển thị "E-mail address []:" thì nhập email mong muốn vào, khi nào có vấn đề liên quan SSL nó báo.

- Đồng ý thỏa thuận file PDF (rãnh thì đọc nó nói gì - mình thì next)
![anhkevin_sll_bitnami_6.PNG]({{ "/assets/img/uploads/2021/anhkevin_sll_bitnami_6.PNG" | relative_url }})

Báo "Success" là thành công -> refresh lại web để kiểm tra
