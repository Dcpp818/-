# String 对象

## 1.1 length

 可以获取字符串的长度

```js
var str1 = "hello world";
document.write("str1.length:" + str1.length + "<br>");
```

## 1.2 charAt()

返回在指定位置的单个字符

```js
var str1 = "hello world";
document.write("str1.charAt(6):" + str1.charAt(6) + "<br>");
```

## 1.3 replace()

替换与正则表达匹配的字串

```js
var str = "andy,hello!andy,aaa,andy,你好！";
document.write(str.replace("andy", "张三") + "<br>");
document.write(str.replace(/andy/g, "张三") + "<br>");
```

## 1.4 split()

用于把一个字符串分隔成字符串数组

split的参数有2个
separator(必须):指定分隔的字符串或正则表达式.
howmany(可选):该参数可指定返回的数组的最大长度.
				如果设置了该参数,返回的字串不会多于这个参数指定的数组.
				如果没有设置该参数,整个字符串都会被分隔,不考虑它的长度.

```js
var str = "aaa,bbb,cc,hello";
var arr = str.split(",", 5);
document.write(str + "<br>");
document.write("str.split(', ', 2):" + arr + "<br>");
document.write(arr.length + "<br />");
```

## 1.5 toUpperCase()

大写

## 1.6 roLowerCase()

小写

```js
var str1 = "Hello Js!大家好 123";
document.write(str1.toUpperCase() + "<br />");
document.write(str1.toLowerCase() + "<br />");
```

## 1.7 indexOf()

查询子串在字符串中第一次出现的位置

```js
var str = "aaandy,hello!andy,你好！我爱andy";
document.write(str.indexOf("andy", 14) + "<br />");
var index = 0; //记录查找的开始位置
var count = 0; //记录出现的次数
while((index = str.indexOf("andy", index)) != -1) {
	count++;
	document.write("andy第" + count + "次出现的位置是" + index + "<br />");
	index += 4;
}
```

## 1.8 lastIndexOf()

从后向前搜索字符串第一次出现的位置

```js
var id = "210282200009155318";
document.write(id.lastIndexOf("915") + "<br />");
```

## 1.9 substring(start,end)

```js
document.write(id.substring(6) + "<br />");
document.write(id.substring(6, 14) + "<br />");
```



