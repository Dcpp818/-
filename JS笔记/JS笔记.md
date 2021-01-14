# css

## 字体

font-family: "黑体";

font-size: 30px;

/*background-image: ;*/   /*背景图片*/

## 外联CSS样式

<link rel="stylesheet" href="../css/Day01.css" />

## 超链接标签

<a href="http://www.baidu.com">超链接</a>

 text-decoration:none; /*超链接无下划线*/

## 图片

<img src=""/>     <!--图片-->

## 段落标签

<p>段落标签</p>

标题标签

<h1>标题标签</h1>

<h2>标题标签</h2>

<h3>标题标签</h3>

<h4>标题标签</h4>

<h5>标题标签</h5>

<h6>标题标签</h6>

<!--h1到h6字体从大到小变化-->

## 文本容器

<span>文本容器</span>

## 换行

<br />

## 空格

&nbsp;

## 分割线

<hr />

## 容器/布局标签/框

<div>容器/布局标签/框</div>

### 文字居中

text-align: center;

### 溢出字体

#### 滚动

如果元素中的内容超出了给定的宽度和高度属性，overflow 属性可以确定是否显示滚动条等行为。

overflow: scroll;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image001.png)

#### 隐藏

overflow: hidden;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image002.png)

#### 自动处理

overflow: auto;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image003.png)

## 弧度

border-radius: 150px;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image004.png)

## 边框实线/虚线

### 实线：solid

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image005.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image006.png)

### 虚线：dashed

border: 2px dashed deepskyblue;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image007.png)

## 列表

### ![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image008.png)无序列表：

<ul>

  <li>a</li>

  <li>b</li>

  <li>c</li>

</ul>

### 有序列表：

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image009.png)<ol>

  <li>a</li>

  <li>b</li>

  <li>c</li>

</ol>

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image010.png)<ol type="i">

  <li>a</li>

  <li>b</li>

  <li>c</li>

</ol>

## 表格

<table border="1" width="400px" height="300px" cellspacing="0">

​    <caption>用户表</caption>

​    <thead>

​    <tr>

​      <th>用户ID</th>

​      <th>用户名</th>

​      <th>用户密码</th>

​    </tr>

​    </thead>

​    <tr>

​      <td>1</td>

​      <td>张三</td>

​      <td>111</td>

​    </tr>

​    <tr>

​      <td>2</td>

​      <td>李四</td>

​      <td>66666</td>

​    </tr>

​    <tr>

​      <td>3</td>

​      <td>王二麻子</td>

​      <td>123456</td>

​    </tr>

​    </table>

### 属性：

border="1"  ——边框

cellspacing="0" 

<caption>用户表</caption> ——表名

<tr></tr> ——行

<td></td> ——列

<thead></thead> ——列标题

<th>用户ID</th>  ——居中和加粗

colspan="x"————横跨X列的单元格

rowspan="X"————横跨X行的单元格

## 表单 form

表单居中

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image011.png)

<div>

    <img src="img7.jpg" width="50%" />

  <form action="http://www.taobao.com">

​    <input type="text" /><br />

​    <input type="password" /><br />

​    <input type="number" /><br />

​    <input type="email" /><br />

​    <input type="color" /><br />

​    <input type="file" /><br />

​    <span>性别</span><input type="radio" name="sex" checked/><span>male</span> <input type="radio" name="sex" /> <span>female</span> <br>

​    <span>爱好</span><input type="checkbox" name="lobby" /><span>运动</span> <input type="checkbox" name="lobby" checked/> <span>电影</span> <br>

​    <textarea cols="50" rows="5">文本域</textarea><br>

​    <select>

​      <option>aaa</option>

​      <option>bbb</option>

​      <option>ccc</option>

​    </select>

​    <input type="reset" value="清空" />

​    <input type="submit" value="注册" />

  </form>

</div>

### 属性

#### Input:

<input type="text" />  ——输入框（无限制）

<input type="password" /> ——密码框

<input type="number" /> ——数字框

<input type="email" />  ——邮箱框

<input type="color" />  ——颜色选择

<input type="file" />  ——文件选择

<input type="radio" name="sex" checked/> ——单选

<input type="checkbox" name="lobby" />  ——多选

<input type="reset" value="清空" />  ——重置（清空）

<input type="submit" value="注册" /> ——注册（跳转）

 

### 文本域

<textarea cols="50" rows="5">文本域</textarea>

Cols 每行有多少字

Rows 有多少行

#### 下拉选择框

<select>

  <option>aaa</option>  ——添加选项

  <option>bbb</option>

  <option>ccc</option>

</select>

 

## CSS定位

### 块级转内联块标签

display: inline-block;

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image012.png)![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image014.jpg)     ![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image016.jpg)

### 固定定位



  position: fixed;

  left: 30px;

  top: 30px;

### 相对定位



  position: relative;

  left: 30px;

  top: 30px;

### 绝对定位



  position: absolute;

  top: 30px;

  left: 30px;

 

bottom: 0; 从下往上

### 浮动



  

[float: right;](#_浮动)

# Js

## 使用js文件

### 1.调用

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image017.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image018.png)

### 2. 标签使用

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image019.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image021.jpg)

## 弹窗

### 1、警示框 alert()

就是提示成功

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image022.png)

### 2、确认框 confirm()

Case：删除前提示是否确认

点击确定===》true

点击取消===》false

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image023.png)

### 3、提示框 prompt()

带输入框 

点击确定 ===》显示输入框输入的内容

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image024.png)

## 控制台 console.log()

Console.log(“XXXX”)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image025.png)

## 页面 支持html标签Document.write

Document.write(“XXXXX”)

## 数据类型

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image026.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image028.jpg)

Number  数值型

String   字符串

Undefined  未定义

### 判断XXX的数据类型  Typeof(XXX) 

## 运算符

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image030.jpg)

## 取整

\1. parseInt(小数)

\2. Number(小数)

\3. Math.floor(小数)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image031.png)

## 保留小数 toFixed() n表示保留几位

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image033.jpg)

 

 

## 函数

```
function myFunction()
```

```
{
```

```
document.getElementById("demo").innerHTML="My First JavaScript Function";
```

```
}
```

## 访问 HTML 元素

如需从 JavaScript 访问某个 HTML 元素，您可以使用 document.getElementById(*id*) 方法。

```
document.getElementById("demo").innerHTML="My First JavaScript";
```

浏览器将访问 id="demo" 的 HTML 元素，并把它的内容（innerHTML）替换为 "My First JavaScript"。

 

## DOM 节点

### 一、获取

·  [通过 id 找到 HTML 元素](#_1.document.getElementByID(XXX))

·  [通过标签名找到 HTML 元素](#_3.document.getElementByTagName(XXX)[n])

·  [通过类名找到 HTML 元素](#_2.document.getElementByClassName(XXX)[n])

 

#### 1.document.getElementByID(XXX)     



XXX   ID值

#### 2.document.getElementsByClassName(XXX)[n]         



XXX   class值   n  下标/角标 0~

#### 3.document.getElementsByTagName(XXX)[n]     



XXX   标签名   n  下标/角标 0~

### 二、节点内容

#### 1.innerText     内部文本

#### 2.innerHTML   内部所有内容（文本html标签）

#### 3.value     input的value属性值

**！！！双标签   innerText/innerHTML**     

​    **单标签    节点.属性名 ======== 属性值**

 

 

 

 

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image035.jpg)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image036.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image038.jpg)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image040.jpg)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image041.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image042.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image044.jpg)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image045.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image046.png)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image048.jpg)

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image050.jpg)

### 创建/删除 DOM节点

#### 1. 创建 

document.createElement(XXX)   ————创建节点   XXX标签名

document.createTextNode(XXX) ————创建文本内容

 

document.getElementsByTagName("div")[0].appendChild(temp_01)

#### 2. 删除

document.getElementsByTagName("span")[0].remove()

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image052.jpg)

## 获取文本运算 parseInt()

![img](file:///C:/Users/PP/AppData/Local/Temp/msohtmlclip1/01/clip_image053.jpg)

## JS流程控制语句

### 判断（选择）  if  switch

condition 条件 true/false 

stmt statement 语句体

default 

#### IF

##### 1.if 单分支 条件为true stmt执行 否则不执行

if(condition){

  stmt 

}

##### 2.if 双分支  二选一 运行

if(condition){

  stmt 1

}else{

  stmt 2

}

##### 3.if 多分支 多选1  （如果省略else 可能不执行）

if(contidion 1){

  stmt 1

}else if(contidion 2){

  stmt 2

}else if(){

 

}

...

else if(){

 

}else{

  stmt n

}

#### switch

 

switch(变量名){

case 值1:

  stmt 1;

  break;

case 值2:

  stmt 2;

  break;

...

default:

  stmt n;

}

### 循环（遍历） for   while   do..while

#### for 

 for(A;B;C){

   D

 }

 

 A : 初始化

 B ： 循环条件

 C : 每次循环结束后运行

 D : 循环体

 

 break ： 离开当前循环

 continue: 结束当前轮次循环 直接进入下一轮次循环

 

##### 无限循环

for(;;){

  

}

#### while

while(condition){

  stmt 

}

#### do...while

do{

  stmt

}while(condition)

## 随机数

Math.random()  [0,1)之间的随机数  



 

## JS——数组——Array

### 创建数组：

method 1:

Var 数组名=new Array();

数组名[下标]=元素  下标从0开始计算

method 2:

var 数组名=new Array(元素1，元素2，。。。);

method 3:

var 数组名=[元素1，元素2，。。。]

### 数组常用方法：

#### 1) 数组名.length            元素个数/数组长度

数组名.length

#### 2) 数组名.indexOf(元素)        该元素在数组内的位置（下标值）/-1

数组名.indexOf(元素值)

#### 3) 数组名.concat(数组名)       数组的拼接 返回值为拼接后结果 原数组不变

数组名.concat(数组名)

数组名[n]            第n+1个元素

#### 4) 数组名.unshift(XXX)         数组前添加xxx元素

数组名.unshift(元素1，元素2，...)

#### 5) 数组名.shift()           数组前删除元素

数组名.shift()

#### 6) 数组名.push(XXX)          数组尾部添加XXX元素

数组名.push(元素1，元素2，...)

#### 7) 数组名.pop()             数组尾部删除

数组名.pop()

#### 8) 数组名.sort()            自然排序  按ASCII码值排序

数组名.sort()

**
**

## JS——字符串——String

### 创建字符串：

var 字符串名字 = new String("元素")

 

### 字符串常用方法：

#### (1)length  长度

#### (2)charAt()  根据下标返回对应字符

#### (3)concat() 字符串拼接

#### (4)indexOf() 首次出现的下标位置  lastIndexOf() 后序首次出现下标位置  / 没有该元素 -1

#### (5)split(X)  分割  以X作为分割符 讲字符串分割成 js数组 

#### (6)substring()  substring(a) 从下标为a元素至最后  substring(a，b)  [a,b)

#### (7)toLowerCase() 转换为小写  toUpperCase() 转换为大写

#### (8)toString()  转换为字符串

 

## JS定时器

### 1. setTimeout()   clearTimeout()

### 2. setInterval()     clearInterval()

setTimeout在规定时间后执行完某个操作就停止了，而setInterval则可以一直循环下去

 

 