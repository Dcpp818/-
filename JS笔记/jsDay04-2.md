# Array(数组)

## 1.创建数组

```js
var score = new Array(); //创建数组
var arr = []; //创建数组
var cars = ['benz', 'bmw', 100, true, 12]; //创建数组
```

## 2.访问数组元素

```js
//数组里元素得到访问通过下标
//格式：数组变量名[index]
//注意：index的范围：0~数组长度-1
document.write("数组cars里的第三个元素：" + cars[2] + "<br />");
//数组的遍历1：
for(var i = 0; i <= cars.length - 1; i++) {
	document.write("数组cars的第" + i + "个元素：" + cars[i] + "<br />");
}
//数组的遍历2：
//For...In声明用于遍历数组或者对象的属性
var x;
for(x in cars) {
	document.write("数组cars的第" + x + "个元素：" + "," + cars[x] + "****<br />");
}
```

## 3.length属性

//数组可以通过属性length获取长度

```js
document.write("数组cars的长度：" + cars.length + "<br />");
```

## 4.数组常用方法

### push()：

向数组的末尾添加一个或多个元素，并返回新的长度

```js
var scores = new Array();
scores.push(90);
scores.push(88);
scores.push(97);
scores.push(95);
document.write("scores:" + scores + "<br />");
document.write("scores里最后一个人的成绩：" + scores[scores.length - 1] + "<br />");
```



# Math 

## 1.Math的常用方法

### Math.random();

 //[0~1)之间的随机小数

### Math.round(x);

 //四舍五入

### Math.max(x,y);

 //取最大值

### Math.min(x,y);

 //取最小值

### Math.ceil(x);

 //向上取整

### Math.floor(x);

 //向下取整

```js
document.write(Math.random() + "<br />");
```

```js
//练习：定义函数返回指定区间的随机整数
function getRandomInt() {
	var num1 = parseInt(document.getElementById("num1").value);
	var num2 = parseInt(document.getElementById("num2").value);
	if(isNaN(num1)) {
		alert("数字1输入非法字符，请输入数字！" + num1_str);
		return;
	}
	if(isNaN(num2)) {
		alert("数字2输入非法字符，请输入数字！" + num2_str);
		return;
	}
	if(num2 < num1) {
		alert("数字1必须小于等于数字2！（" + num1 + "," + num2 + ")");
		return;
	}
	var a = Math.floor(Math.random() * (num2 - num1 + 1) + num1);
	alert(num1 + "~" + num2 + "之间的随机数：" + a);
}
```

# number 

var num1 = 123.454789;

## .toFixed(n):

格式化小数,保留n位,返回类型是字符串。
注意：保留n位时，n+1位会向n位四舍五入

```js
document.write(num1.toFixed(2) + "<br />");
var num2 = new Number(13.37);
document.write(num2.toFixed(1) + "<br />");
```

# Date

var now = new Date();

## Date的常用方法

### getFullYear()：

从Date对象以四位数字返回年份

### getMonth()：

从Date对象返回月份（0~11）

### getDate()：

从Date对象返回一个月中的某一天

### getHours():

返回Date对象的小时（0~23）

### getMinutes():

返回Date对象的分钟（0~59）

### getSeconds():

返回Date对象的秒钟（0~59）

### getMillseconds():

返回Date对象的毫秒（0~999）

### setFullYear(year,month,day):

用于设置年份

### setMonth():

设置Date对象中的月份（0~11）

### setDate():

设置Date对象中月的某一天（1~31）

```js
document.write("月份" + (now.getMonth() + 1) + "<br />");
document.write("年" + (now.getFullYear()) + "<br />");
```

# 正则表达式

```js
var ss = "Welcome to IBM!We are proud to announce the IBM has one of the largest Web Developers sites in the world.2015/10/19";
document.write(ss + "<br />");
//1.将上面字符串中的"IBM"全部替换为dhc
//创建正则表达式RegExp对象语法
var reg1 = new RegExp("andy", "gi");
//RegExp对象表示正则表达式，它是对字符串执行模式匹配的强大工具
var reg2 = /IBM/g;
document.write(ss.match(/andy/gi) + "<br />");
document.write(ss.match(reg2) + "<br />");
document.write(ss.replace(reg2, "dhc") + "<br />");
//2.检索第一个与IBM相匹配的字符串位置，忽略大小写
document.write(ss.search(/IBM/i) + "<br />");
//3.用全局匹配的正则表达式来检索字符串中的数字
document.write(ss.match(/\d/g) + "<br />");
document.write(ss.match(/\d+/g) + "<br />");

var s3 = "Welcome gaa to gad beijing 2008,12 beijing gd is very good";
document.write(s3 + "<br />");
//1.把beijing换成大连
document.write(s3.replace(/beijing/g, "dalian") + "<br />");
//2.把单个数字换成2009
document.write(s3.replace(/[0-9]/g, "2009") + "<br />");
//3.把连续数字换成2009
document.write(s3.replace(/[0-9]+/g, "2009") + "<br />");
//4.把以g为开头，以d为结尾的单词换成“优秀”
document.write(s3.replace(/\bg\w*d\b/g, "优秀") + "<br />");
```





