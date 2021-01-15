# js事件

事件时可以被javascript侦测到的行为
注意:事件通常与函数配合使用,当事件发生时,函数才会执行

## 1.onload:

页面加载完毕后触发

## 2.onUnload:

离开页面时触发

## 3.onFocus,onBlur,onChange:

经常用于表单项目的验证

### 	3.1onFocus事件:

​		表单得到焦点时触发

### 	3.2onBlur事件:

​		表单失去焦点时触发

### 	3.3onChange事件:

​		表单内容变更时触发

## 4.onSubmit:

用于提交form表单时触发,写在form标签内使用

## 5.onclick:

点击页面标签时触发.多用于按钮的单击

# DOM

DOM(文档对象模型):提供了访问页面上标签的方法

## DOM节点:

### 1.文档节点:

每一个文档就是一个文档节点

### 2.元素节点:

每一个HTML标签就是一个元素节点

### 3.文本节点:

包含在HTML元素中的文本就是文本节点

### 4.属性节点:

每一个HTML属性是一个属性节点

### 5.注释节点:

注释属于注释节点

## 1.取得元素节点

### 1.1取得单一的元素节点（重点！！！）

```js
//document.getElementById("one"):返回id属性对应的一个节点
document.getElementById("three").className="gray";
document.getElementById("four").className="cool";
```

### 1.2取得多个元素节点，即元素点集合

```js
//document.getElementsByTagName("li"):通过指定标签名字取得节点集合
//document.getElementsByClassName("hot"):通过类名取得节点集合
//document.getElementsByName("sex"):通过name属性取得节点集合,常用于单选框和复选框
alert(document.getElementsByTagName("li")[0].innerText);
alert(document.getElementsByClassName("hot")[1].innerText);
```

## 2.获取/设置文本（重点！！！）

### 2.1 表单项目的文本：.value

### 2.2 非表单项目

#### 		.innerHTML:

​				获取非表单项目的文本,包括标签

####     	.innerText:

​				获取非表单项目的文本,不含有标签

```js
alert(document.getElementsByTagName("ul")[0].innerText);
alert(document.getElementsByTagName("ul")[0].innerHTML);
document.getElementById("two").innerHTML="<em>新疆的</em>西瓜";
```

## 传统的DOM进行事件交互

```js
document.getElementById("subBut1").onclick = function() {
	alert("你是入的名字是：" + document.getElementById("name1").value);
	document.getElementById("name1").value = "我修改了";
	alert("我修改了你输入的名字:" + document.getElementById("name1").value);
}
document.getElementById("add").onclick = function() {
	var text1 = document.getElementById("text1").value;
	var text2 = document.getElementById("text2").value;
	alert("结果是：" + (Number(text1) + Number(text2)));
}
```

## 3.获取/设置属性

### .className:

获取/设置class的属性

### .getAttribute(属性名):

获取属性的值

### setAttribute(属性名,属性值):

设置属性的值

### .removeAttribute(属性名):

删除属性以及属性的值

```js
//document.getElementById("three").className="gray";
//alert(document.getElementById("three").getAttribute("class"));
document.getElementById("three").removeAttribute("class");
document.getElementById("three").setAttribute("class","gray");
```

## 4. 添加节点（5个步骤）

### 4.1 创建一个元素节点

```js
var eleNode=document.createElement("li");
```

### 4.2 创建一个文本节点

```js
var textNode=document.createTextNode("鸭梨");
```

### 4.3 把文本节点添加到元素节点上

```js
eleNode.appendChild(textNode);
```

### 4.4 找到父节点

```js
var fartherNode=document.getElementsByTagName("ul")[0];
```

### 4.5 把子元素节点添加到父节点里

```js
fartherNode.appendChild(eleNode);
```

## 5. 删除节点（3个步骤）

### 5.1 找到你要删除的节点

```js
var delNode=document.getElementById("two");
```

### 5.2 找到子节点的父节点

```js
var fNode=delNode.parentNode;  //一种写法
//var fNode=document.getElementsByTagName("ul")[0];
```

### 5.3 从父节点删除子节点

```js
fNode.removeChild(delNode);
```

# HTML代码

```html
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/jsDay05.css" />
	</head>
	<body>
		<!--注释节点-->
		<h2>DOM讲解</h2>
		<h2>水果店</h2>
		<ul>
			<li id="one" class="hot"><em>新鲜的</em>草莓</li>
			<li id="two" class="hot">苹果</li>
			<li id="three" class="hot">香蕉</li>
			<li id="four" class="gray">芒果</li>
		</ul>
		<hr />
		<input type="text" id="name1" />
		<button id="subBut1">获取表单输入的名字</button>
		<button onclick="alert('您好！')">点我一下</button>
		<div onmouseover="this.style.color='red'" onmouseout="this.style.color='blue'">欢迎来到大连高新区！</div>
		<input type="text" id="text1" />
		<input type="text" id="text2" />
		<br />
		<button id="add">加</button>
		<script type="text/javascript" src="js/jsDay05.js" ></script>
	</body>
</html>

```

# CSS代码

```css
.hot{
	background-color: yellow;
}
.gray{
	background-color: gray;
}
.cool{
	background-color: rgb(116,255,255);
}

```

# JS代码

```js
//js事件
//事件时可以被javascript侦测到的行为
//注意:事件通常与函数配合使用,当事件发生时,函数才会执行
//1.onload:页面加载完毕后触发
//2.onUnload:离开页面时触发
//3.onFocus,onBlur,onChange:经常用于表单项目的验证
//	3.1onFocus事件:表单得到焦点时触发
//	3.2onBlur事件:表单失去焦点时触发
//	3.3onChange事件:表单内容变更时触发
//4.onSubmit:用于提交form表单时触发,写在form标签内使用
//5.onclick:点击页面标签时触发.多用于按钮的单击

/*DOM(文档对象模型):提供了访问页面上标签的方法
DOM节点:
1.文档节点:每一个文档就是一个文档节点
2.元素节点:每一个HTML标签就是一个元素节点
3.文本节点:包含在HTML元素中的文本就是文本节点
4.属性节点:每一个HTML属性是一个属性节点
5.注释节点:注释属于注释节点*/

//1.取得元素节点
//1.1取得单一的元素节点（重点！！！）
//document.getElementById("one"):返回id属性对应的一个节点
document.getElementById("three").className = "gray";
document.getElementById("four").className = "cool";

//1.2取得多个元素节点，即元素点集合
//document.getElementsByTagName("li"):通过指定标签名字取得节点集合
//document.getElementsByClassName("hot"):通过类名取得节点集合
//document.getElementsByName("sex"):通过name属性取得节点集合,常用于单选框和复选框
//alert(document.getElementsByTagName("li")[0].innerText);
//alert(document.getElementsByClassName("hot")[1].innerText);

//2.获取/设置文本（重点！！！）
//2.1 表单项目的文本：.value
//2.2 非表单项目
//		.innerHTML:获取非表单项目的文本,包括标签
//		.innerText:获取非表单项目的文本,不含有标签
//alert(document.getElementsByTagName("ul")[0].innerText);
//alert(document.getElementsByTagName("ul")[0].innerHTML);
//document.getElementById("two").innerHTML="<em>新疆的</em>西瓜";

//传统的DOM进行事件交互
document.getElementById("subBut1").onclick = function() {
	alert("你是入的名字是：" + document.getElementById("name1").value);
	document.getElementById("name1").value = "我修改了";
	alert("我修改了你输入的名字:" + document.getElementById("name1").value);
}
document.getElementById("add").onclick = function() {
	var text1 = document.getElementById("text1").value;
	var text2 = document.getElementById("text2").value;
	alert("结果是：" + (Number(text1) + Number(text2)));
}

//3.获取/设置属性
//.className:获取/设置class的属性
//.getAttribute(属性名):获取属性的值
//.setAttribute(属性名,属性值):设置属性的值
//.removeAttribute(属性名):删除属性以及属性的值
//document.getElementById("three").className="gray";
//alert(document.getElementById("three").getAttribute("class"));
document.getElementById("three").removeAttribute("class");
document.getElementById("three").setAttribute("class","gray");

//4. 添加节点（5个步骤）
//4.1 创建一个元素节点
var eleNode=document.createElement("li");
//4.2 创建一个文本节点
var textNode=document.createTextNode("鸭梨");
//4.3 把文本节点添加到元素节点上
eleNode.appendChild(textNode);
//4.4 找到父节点
var fartherNode=document.getElementsByTagName("ul")[0];
//4.5 把子元素节点添加到父节点里
fartherNode.appendChild(eleNode);

//5. 删除节点（3个步骤）
//5.1 找到你要删除的节点
var delNode=document.getElementById("two");
//5.2 找到子节点的父节点
var fNode=delNode.parentNode;  //一种写法
//var fNode=document.getElementsByTagName("ul")[0];
//5.3 从父节点删除子节点
fNode.removeChild(delNode);

```

