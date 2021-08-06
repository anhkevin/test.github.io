---
id: 198
title: Khai báo biến var và let trong JavaScript khác nhau gì?
date: 2019-10-09T15:33:52+07:00
author: Ime Share
excerpt: |
  - let: khai báo biến sử dụng let chỉ được phép sử dụng trong block bao quanh nó, nếu gọi biến đó ngoài block thì sẽ bị lỗi
  - var: khai báo biến sử dụng var có phạm vi truy xuất xuyên suốt hàm số chứa nó
layout: post
permalink: /khai-bao-bien-var-va-let-trong-javascript-khac-nhau-gi/
post_views_count:
  - "75"
categories: [JavaScript]
tags: [JavaScript]
---
**&#8211; let: **khai báo biến sử dụng let chỉ được phép sử dụng trong block bao quanh nó, nếu gọi biến đó ngoài block thì sẽ bị lỗi

Xem ví dụ dưới:

```
function use_let() {
	let x = 1;
	if (true) {
		let x = 2;
		let y = 3;
		console.log(x); // hiển thị 2
		console.log(y); // hiển thị 3
	}
	console.log(x); // hiển thị 1
	console.log(y); // báo lỗi “not defined”
}
```

**&#8211; var:** khai báo biến sử dụng var có phạm vi truy xuất xuyên suốt hàm số chứa nó

Xem ví dụ dưới:

```
function use_var() {
	var x = 1;
	if (true) {
		var x = 2;
		var y = 3;
		console.log(x); // hiển thị 2
		console.log(y); // hiển thị 3
	}
	console.log(x); // hiển thị 2
	console.log(y); // hiển thị 3
}
```