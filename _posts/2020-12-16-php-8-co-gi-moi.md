---
title: PHP 8 có gì mới ?
date: 2020-12-16 11:33:00 +0800
categories: [PHP]
tags: [PHP]
math: true
---

<p>PHP 8.0 giới thiệu một số tính năng mới, trong đó đáng chú ý nhất là các kiểu liên hợp (union types), trình biên dịch Just In Time (JIT), toán tử nullsafe, thuộc tính (attributes) và đặt tên cho đối số (named arguments)</p>
<ul>
<li>Trình biên dịch JIT được thiết kế để cải thiện hiệu suất cho các ứng dụng web.</li>
<li>Union types là một tính năng cho phép dữ liệu của nhiều kiểu được giữ bởi một biến.</li>
<li>Đặt tên cho các đối số cho phép các developer gán giá trị cho một hàm bằng cách chỉ định tên giá trị, cho phép bỏ qua các tham số tùy chọn.</li>
<li>Bên cạnh đó, phiên bản 8.0 của PHP mang đến những tối ưu hóa và cải tiến cho hệ thống kiểu, cú pháp, xử lý lỗi và tính nhất quán của ngôn ngữ.</li>
</ul>

## PHP JIT (Just in Time)

***

<p>Đây là một trong các tính năng được mong đợi nhất ở lần cập nhật này.
PHP JIT được thực hiện gần như độc lập, nó có thể được bật / tắt vào lúc biên dịch mã code PHP. Khi được bật, mã PHP được lưu trữ trong một vùng nhớ cache và sẽ được chạy khi có yêu cầu.
</p>
<p>=> Tracing JIT, hứa hẹn nhất vì cho thấy hiệu suất tốt hơn khoảng 3 lần trên các điểm chuẩn tổng hợp và cải thiện 1,5–2 lần trên một số ứng dụng chạy dài cụ thể.</p>
<p>Dưới đây là bảng so sánh hiệu suất của JIT trong PHP</p>
![Desktop View]({{ "https://www.php.net/images/php8/scheme.svg" | relative_url }})

***

## Đối số được đặt tên (Named arguments)

***
<ul>
<li>Chỉ xác định các thông số bắt buộc, bỏ qua các thông số tùy chọn.</li>
<li>Các lập luận không phụ thuộc vào trật tự và tự ghi lại.</li>
</ul>

### PHP 7:
```php
htmlspecialchars($string, ENT_COMPAT | ENT_HTML401, 'UTF-8', false);
```

### PHP 8:
```php
htmlspecialchars($string, double_encode: false);
```

***

## Thuộc tính (Attributes)

***
Thay vì chú thích PHPDoc, giờ bạn có thể sử dụng siêu dữ liệu có cấu trúc với cú pháp gốc của PHP.

### PHP 7:
```php
class PostsController
{
    /**
     * @Route("/api/posts/{id}", methods={"GET"})
     */
    public function get($id) { /* ... */ }
}
```

### PHP 8:
```php
class PostsController
{
    #[Route("/api/posts/{id}", methods: ["GET"])]
    public function get($id) { /* ... */ }
}
```

***

## Khuyến cáo thuộc tính hàm dựng (Constructor property promotion)

***

Thay đổi cách khai báo các tham số bằng cách đặt trong các tham số ở hàm khởi tạo luôn

### PHP 7:
```php
class Point {
    public float $x;
    public float $y;
    public float $z;

    public function __construct(
        float $x = 0.0,
        float $y = 0.0,
        float $z = 0.0
    ) {
        $this->x = $x;
        $this->y = $y;
        $this->z = $z;
    }
}
```

### PHP 8:
```php
class Point {
    public function __construct(
        public float $x = 0.0,
        public float $y = 0.0,
        public float $z = 0.0,
    ) {}
}
```

***

## Union Types

***

Union types là một tập hợp của hai hoặc nhiều kiểu cho biết rằng một trong hai kiểu đó có thể được sử dụng

### PHP 7:
```php
class Number {
    /** @var int|float */
    private $number;

    /**
    * @param float|int $number
    */
    public function __construct($number) {
        $this->number = $number;
    }
}

new Number('NaN'); // Ok
```

### PHP 8:
```php
class Number {
    public function __construct(
        private int|float $number
    ) {}
}

new Number('NaN'); // TypeError
```

***

## Biểu thức hợp nhau (Match expression)

***
Match là biểu thức mới tương tự như switch và có các tính năng sau:
<ul>
<li>Match là một biểu thức, có nghĩa là kết quả của nó có thể được lưu trữ trong một biến hoặc được trả về.</li>
<li>Các nhánh so sánh chỉ hỗ trợ các biểu thức một dòng và không cần break; để kết thúc lệnh.</li>
<li>Match không so sánh chặt chẽ.</li>
</ul>

### PHP 7:
```php
switch (8.0) {
    case '8.0':
        $result = "Oh no!";
        break;
    case 8.0:
        $result = "This is what I expected";
        break;
}
echo $result;
//> Oh no!
```

### PHP 8:
```php
echo match (8.0) {
    '8.0' => "Oh no!",
    8.0 => "This is what I expected",
};
//> This is what I expected
```

***

## Toán tử Nullsafe (Nullsafe operator)

***
<p>Thay vì kiểm tra điều kiện null, bây giờ có thể sử dụng một chuỗi các cuộc gọi với toán tử nullsafe mới. </p>
<p>Khi đánh giá một phần tử trong chuỗi fails, quá trình thực thi của toàn bộ chuỗi sẽ bị hủy bỏ và toàn bộ chuỗi được gán là null. </p>

### PHP 7:
```php
$country =  null;

if ($session !== null) {
    $user = $session->user;

    if ($user !== null) {
        $address = $user->getAddress();
    
        if ($address !== null) {
            $country = $address->country;
        }
    }
}
```

### PHP 8:
```php
$country = $session?->user?->getAddress()?->country;
```

***

## So sánh chuỗi ký tự với số (Saner string to number comparisons)

***

### PHP 7:
```php
0 == 'foobar' // true
```

### PHP 8:
```php
0 == 'foobar' // false
```

***

## Nhất quán lỗi cho các Hàm nội bộ (Consistent type errors for internal functions)

***

Hầu hết các Hàm nội bộ sẽ ném Error exception nếu việc xác thực các tham số không thành công.

### PHP 7:
```php
strlen([]); // Warning: strlen() expects parameter 1 to be string, array given

array_chunk([], -1); // Warning: array_chunk(): Size parameter expected to be greater than 0
```

### PHP 8:
```php
strlen([]); // TypeError: strlen(): Argument #1 ($str) must be of type string, array given

array_chunk([], -1); // ValueError: array_chunk(): Argument #2 ($length) must be greater than 0
```

***
