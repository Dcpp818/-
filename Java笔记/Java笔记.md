java 面向对象的语言

java ME  java   java EE

 

pro  空白项目

java pro java项目（纯后台）

static pro  静态web项目（纯前端）

dynamic pro 动态web项目 前后台

 

java依赖 war jar

 

项目名 首字母大写 驼峰式 数字后置

package 包 包名 全部小写 .分割   表示包含关系  com.test.basic

新建java文件 new  class  命名  首字母大写 驼峰 数字后置

 

输出指令  ： 

System.out.println("java控制台输出测试");

syso  alt+/ 联想  （IDEA开发工具 sout）

 

ctrl+z 撤销

ctrl+y 取消撤销

ctrl+s 保存

ctrl+ x/c/v

ctrl+shift+f 格式标准化

 

ctrl+/ 注释

ctrl+shift+/ 注释

ctrl+alt+ 方向下 复制粘贴整行

ctrl+shift+L 所有快捷键

 

 

basic

1.变量/常量

2.数据类型

3.符号

4.过程控制语句（判断/循环）、

5.算法

 

进阶

继承 封装 多态 抽象 接口 上下转型 

 

API 应用程序接口

集合体系

异常体系

数据流体系

线程体系

开发模式 

线程间通讯 java-mail 

 

//   System.out.println("java控制台输出测试"); //输出后换行

//   System.out.print("java 运行测试"); //输出

 

# 变量/常量

## 变量

//   先声明，再赋值

//   ***声明格式: 数据类型 变量名\***

​    int demo_01;

//   赋值格式：

//   变量名=值

​    demo_01=1080;

​    demo_01=30;

​    demo_01=50;

//   System.out.println(demo_01);

//   合并：

//   int demo_02=30;

//   int a=1,b,c=3;

//   System.out.println(b);

## 常量

//   常量： 一经赋值，不可更改 / 不可以改变值的变量

//   ***格式： final 数据类型 变量名  (常量名 全部大写)\***

​    final int FIDEMO;

​    FIDEMO=10;

//   FIDEMO=20;

​    

​    

# 数据类型

//   基本数据类型  /  引用数据类型（类 类型）

​    

//   基本数据类型： 8种

## 整数型： byte  short    int    long

范围：   -128~127  -32768~32767  正负21亿   正负 2的64次方

字节数：   1（8位）  2        4      8

//   1m  1024kb  1kb 1024b

//   1024m 1GB 

//   1024GB  1TB

​    

## 浮点型： float double

字节数：   4     8

有效数字长度：  8   16

//   **float f01=0.1234567890123456789f; //****值尾部+f**

​    double d01=0.1234567890123456789;

​    System.out.println(d01);

​    

## 布尔型 boolean  true/false

​    boolean flag=false;

​    System.out.println(flag);

​    

## 字符型  char 单个 数字/字母/汉字/符号 （charactor） 

​    **char c_01='****字';  //字符 单引号**

​    System.out.println(c_01);

​    

​    

# 引用数据类型（类 类型）

## 1.系统继承的（String）  

​    

​    String str="字符串";

​    System.out.println(str);

## 2.自定义的

​    

# 数据类型转换

//   数据精度： 从低到高  byte (char)  short  int  long  float  double 

//   从低到高： 低精度的值/变量 赋值给 高精度变量 (直接转换)

​    byte b_01=100;

​    int i_01=b_01;

​    System.out.println(i_01);

​    

//   从高到底：高精度 值变量 赋值给 低精度 (需要强制转换,注意有效范围)

​    int i_02=125;

​    byte b_02=(byte)i_02;

​    System.out.println(b_02);

​    

//   不同精度的混合运算

//   如未指定数据类型 整数 默认为int  浮点数默认为double

//   所有变量向高精度转换，在做运算

//   2+1.5f+3.5 ===== 》 2.0 +1.5 + 3.5 ====> 7.0

​    int i_03=(int)(2+1.5f+3.5);

​    

# 符号

## 算术运算符： + - * / %

//   +： 两侧至少有一侧不为数字 + 做拼接符功能

​    System.out.println(1+2+3); //6

​    System.out.println("1"+2+3);  //123

//   /:  取整（无四舍五入 向下取整）

​    System.out.println(11/3);

//   %:求余

​    System.out.println(11%3);

​    

## 赋值运算符： 

//   =： 符号右侧给符号左侧赋值

//   += -= *= /= %=

//   a+=b  效果等价于 a=a+b

​    int a=6;

​    double b=3.6;

//   a+=b;

​    a=(int)(a+b);

​    System.out.println(a);

​    

## 比较运算符：> < >= <= == !=

## 逻辑运算符： &&并且  ||或者   !否/相反

//   优先级 () >  !  >  &&  > ||

​    

// 自增/自减运算符 ++ --

// n++ ++n

int demo_n**=**10**;**

System**.**out**.**println**(**demo_n**++);**

System**.**out**.**println**(**demo_n**);**

// 三目运算符 (boolean)?值1：值2

int i_04**=(****true****)?**2**:**5**;**

System**.**out**.**println**(**i_04**);** //2

 

# 过程控制语句

## if

//   单分支

//   if(condition) {

//     stmt

//   }

//   双分支  2选1

//   if(condition) {

//     stmt1      

//   }else {

//     stmt2     

//   }

 

//   多分支 完整 n选1

//   if(条件1) {

//     stmt 1

//   }else if(条件2) {

//     stmt 2

//   }else if(条件3) {

//     stmt 3

//   }

## switch

//   switch(x) { // value数据类型 byte short int char string(jdk1.7)

//   case value1 :

//     ...

//     break;

//   case value2:

//     ...

//     break;

//   case value3:

//     ...

//     break;

//   。。。

//   default:

//     。。。

//   }

 

# 循环 for  while  do...while

//   continue break

## for

//   for(int i=1;i<=10;i++) {

//     if(i==5) {

//       continue;

//     }

//     System.out.println(i);

//   }

## while

//   int i=100;

//   while(i<=10) {

//       System.out.println(i);

//       i++;

//   }

## Do while

//   int i = 100;

//   do {

//     System.out.println(i);

//     i++;

//   } while (i <= 10);

​    

# 控制台输入

Scanner scan=new Scanner(System.in); 

int i=scan.nextInt(); //控制台输入数字 给数值类型变量赋值

System.out.println(i);

String ii=scan.next(); //控制台输入字符串  next() nextLine() 接收输入字符串 

System.out.println(ii);

# 绝对值

System.out.println(Math.abs(-4)); //Math.abs(X) X的绝对值

# 数组

数组： 存放相同数据类型的容器  Array  

！！！java数组 定长 长度不可更改

！！！直接使用或输出数组名 得到的是 数组在内存中的地址

## 数组的声明：

格式：  

**1.****数据类型[] 数组名**   推荐此种

2.数据类型 数组名[]

## 数组元素的赋值：

method 1：

数据类型[] 数组名 = new 数据类型[长度]

数组名[下标/角标/序列]=值   ！！！下标从0开始计算

 

method 2:

数据类型[] 数组名=new 数据类型[]{元素1，元素2，。。。}

 

method 3:

数据类型[] 数组名={元素1，元素2，。。。}

## 数组内容的遍历：

### 1.下标遍历 ：

将下标作为循环变量 从0 循环值  数组长度-1

### 2.foreach遍历 ：

for(数据类型 变量名:数组名){

  变量名 表示数组中 每一个元素

}

 

## Arrays.toString(XXXX)      将数组以字符串形式返回

 

使用场景：

创建时 已知数组元素内容 使用 method 2/3  否则 使用 1

遍历时 下标循环 可以控制获取数组中 指定位置元素 / foreach 只能对数组全部元素做处理

# 联想

main  alt+/ 主函数/main函数/主方法/main方法  使当前类 能够在虚拟机中运行

syso  alt+/ 联想     控制台输出

 

 

# 异常：

ArrayIndexOutOfBoundsException  数组下标越界异常

NullPointerException     空指针异常

 

 

# 多维数组：

​     

//    二维数组： 以数组为元素的数组 / 矩阵

​     int[][] tow_dim_arr=new int[3][2];

​     //创建一个 二维数组 3个数组（每个数组长度为2）

​     tow_dim_arr[0][0]=20;

​     tow_dim_arr[2][1]=30;

​     System.out.println(Arrays.deepToString(tow_dim_arr));

​     

​     int[][] tow_dim_arr_02=new int[][] {{1,2},{3,4,5},{6}};

​     

​     int[][] tow_dim_arr_03={{1,2},{3,4,5},{6}};

​     System.out.println(Arrays.deepToString(tow_dim_arr_03));

​     System.out.println(tow_dim_arr_03[1].length);

# debug

//    debug: 逐行 分步运行  内置测试工具 

//    f6   step over  执行下一行

F5   step into 进入一个方法/函数（执行行有函数）

F7   step return 离开当前函数

//    f8   resume  运行至下一断点/结束

# 方法/函数

 方法/函数 实现特定功能的代码片段   代码复用性强 维护修改方便

//   ！！！ main 是一个方法 每个类中 最多一个 

## 创建/声明 方法/函数格式：

//   可见性 修饰词 返回数据类型 方法名(形参列表) {

//     方法体

//   }

 

### 可见性/作用域：

*public: 公开的 项目中可见

protected: 受保护的  同一个包（package）， 包外子类

   :  默认的  同一个包

*private:  私有的 仅对当前类可见

//   System.out.println(func_demo());

 

### 修饰词：abstract/final/static/  /

//   static 静态的 （静态只能调用静态，无法直接调用动态）！！！main函数为静态

 

### 返回数据类型: 

创建/声明 函数时 要指定 返回值的数据类型 / 如无返回值 void

//   返回值： 调用函数的代码本身 有值

//   return: 1. return XXX 函数返回值为XXX

//       2. return 

//   XXX 和 返回数据类型 要匹配

 

### 方法名： 

自定义 首字母小写 驼峰式/_式

 

//   形参列表: 形式参数 该参数 有数据类型 有参数名 没有具体值

//   格式： 数据类型 参数名

//   实参列表： 实体参数 该参数 为具体的值

//   调用方法的本质： 实参给形参赋值！！！

//   实参，形参 需要 数据类型，数量，顺序的匹配

 

//   调用格式：

//   同一个类： 方法名(实参列表);

//   不同类 ：  类名.方法名(实参列表);

 

# 随机数

Random XXX=new Random();

# 判断字符是是否相等

XXX.equalsIgnoreCase(XXX)——忽略大小写

XXX.equals(XXX)——不忽略大小写

 

# 类

//   OOP :  object oriented programming 面向对象编程 

//   面向对象： 编程思想,在Java中 所有的功能和操作 都是对 对象的 属性/方法进行操作

//   System.out.println();

//   Arrays.toString(a)

//   特点： 封装 继承 多态 （抽象）  [接口]

​    

//   类和对象

//   类： 描述现实中的一类事物的抽象概念

//   对象： 类的具体实例

//   万物皆对象

​    

//   创建类

//   属性：成员变量/全局变量

//   行为：动态方法 动态方法不能由类 直接调用，只能由类的对象调用

​    

//   实例化对象/创建对象

//   格式： 类名 对象名(自定义)=new 类名();

​    

//   !!!!类名 首字母大写  对象名（变量名） 首字母小写

//   Person person_01=new Person(); 

//   1.类看作模板 每个类的对象 都可以使用该模板 对象之间彼此互不干涉

//   2.类 作为数据类型 对象名作为变量名 

 

 

 

 

//   构造方法（构造函数 构造体 构造器）

//   格式： 类名 对象名(自定义)=new 构造方法();

//   构造方法 位置： 实例化对象时 ，关键字 new后

//       作用： 开辟堆空间

​    

//   !!!构造方法 无返回值 无void

//   !!!构造方法名 和类名同

//   !!!实例化对象时 直接给该对象成员变量赋值

//     this关键字： this.成员变量 效果等同于 成员变量

//   !!!生成构造方法 source（alt+shift+s）----Generate Constructor ... 勾选构造方法参数

//   !!!系统默认提供无参构造 如果新建构造方法 系统收回提供的无参构造方法

 

 

 

 

//属性： 成员变量/全局变量： 在类中（函数外） 声明的变量 ,有初始值

//  ！！！局部变量： 在方法中声明，使用前必须赋值

 

  //全参构造方法

  public Person**(**String id**,** String name**,** int age**,** String sex**)** **{**

​    **super****();**

​    **this****.**id **=** id**;**

​    **this****.**name **=** name**;**

​    **this****.**age **=** age**;**

​    **this****.**sex **=** sex**;**

  **}**

  //无参构造方法

  public Person**()** **{**

​    **super****();**

  **}**

  //部分参数构造方法

  public Person**(**String id**,** String name**)** **{**

​    **super****();**

​    **this****.**id **=** id**;**

​    **this****.**name **=** name**;**

  **}**

# 封装

//    引用和对象

​    Birthday b1=new Birthday(2000,1,1);

​    Birthday b2=new Birthday(2000,1,1);

​    b1=b2;

​    System.out.println(b1==b2);

​    new Birthday(2010,1,1).show();

//   new XXX() 匿名对象 （1.拥有普通引用对象的全部功能 2.无法再次调用,除非在容器中）

**//   Birthday[] birthdays= {new Birthday(2020,1,1),new Birthday(),new Birthday()};**

 

//   一个对象，可以被多个引用指向，也可以没有引用指向（匿名对象）

//   一个引用[变量],可以指向 0个或1个对象

​    

//   == 基本数据类型，比较的是值

**//**     **引用数据类型，比较的是 地址**

​    

## this 关键字

//   1.解决构造方法中，变量重名的问题

//   2.可以调用自身已有构造方法，必须写在方法内首行

//   3.可以调用类中 其他动态方法   

## 属性名：数据类型 - 属于哪个类

//   空心 

​    

//   函数/方法名(参数数据类型):返回值数据类型 - 属于哪个类

//   实心

//   圆绿 public

//   菱黄 protected

//   三蓝 _____

//      方红 private

​    

//   红色s:static 静态

​    

//   封装：类的封装 缩小可见性 防止该类代码和数据 被外部类 随意访问 （隐藏成员变量名）

​    b1.setYear(1990);

​    System.out.println(b1.getYear());

//   自动生成 source ---- Generate getters and setters

​    

​    

## 关键字 package import

​    Person p1=new Person();

​    Circle c1=new Circle();

//   package 包 ： 每个类前 用package指明所在的包 写在首行

//   import 导入： 在类前 导入需要的包/类

//       同一个项目中，尽量不要创建相同类名的类

​    

​    

## static 静态 关键字

### 1.static 可以修饰 变量(成员变量/全局变量)， 被叫做 静态变量/类变量

​    People.nation="中国"; //类变量 只有一个值 不跟对象走

​    

​    People people_01=new People();

​    people_01.name="张三";

​    

​    people_01.show();

​    People people_02=new People();

​    people_02.name="Li 4";

​    

​    people_02.show();

​    people_01.show();   

### 2.static 可以修饰方法

//   静态方法 

​    people_01.static_demo(); //实例对象 可以调静态 类变量/静态方法

​    People.static_demo(); //类名 调静态 更符合规则

### 3.static 可以修饰 代码块

//   代码块/动态代码块/初始化块 类中 {}包裹的代码片段

//         类加载一次（调用该类的构造方法） 运行一次

//   被static修饰的 静态代码块

//         类首次加载时 运行一次 且只运行一次

​    

//   先静后动

# 继承  extends

继承 extends

类声明处： a extends b   a继承b

b 被称为 父类 （fatherClass） /超类（superClass）

a 被称为 子类 （childClass） /继承类类（derivedClass）

定义：新建一个类 从已有的类中 获取属性和行为

 

！！！手写代码

！！！创建类时 选择 superClass

子类对象 可以获取 父类中 全部属性和行为（可见的）

 

java的类 单继承

一个父类 可以有任意个子类

一个类 只有继承于一个父类

 

方法重载：overload--方法同名不同参

## 方法重写：override

！！父类方法不满足需求时，子类可以重写父类方法

1.重写方法 同名同参同返回类型

2.重写时 可以添加@Override注解 加强代码可读性

3.只要父类方法被重写 子类对象只能调用重写后的该方法（原父类方法无法调用）

4.重写的方法 不能拥有比父类方法更严格的可见性

 

## super 关键字 this

1.super可以调用父类构造方法

  ！！！子类构造方法中 必须调用父类构造方法

  ！！！系统默认调用父类 无参构造

  ！！！调用父类构造方法必须写在本身构造方法中首行

2.super可以调用父类方法/属性

 

## final 关键字

1.修饰变量

final int TEMP=10; //变量===》常量

2.修饰方法

public final void run() 被final修饰的方法不能被重写

3.修饰类

public final class Animal 被final修饰的类不能被继承

 

final通常和static一起使用原因

 static XXX 一份拷贝

 final XXX 常量 每个实例 一份拷贝

final static XXX 节省空间

# BigDecimal 高精度计算

BigDecimal 

## 加法

a.add(b)           a+b

## 减法

a.subtract(b)   a-b

## 乘法

a.multiply(b)   a*b

## 除法

a.divide(b)       a/b

如果除不尽的时候可以设置进位机制

### a.divide(b,x)    //x表示进位机制

a.divide(b,ROUND_CEILING)  //第二个参数2表示向上取整

a.divide(b,ROUND_FLOOR)   //第二个参数3表示向下取整

a.divide(b,ROUND_HALF_UP)  //第二个参数4表示四舍五入

 

### a.divide(b,y,x)  // y表示保留几位小数，x表示进位机制

a.divide(b,sum,2)  //第二个参数sum表示精确位数第三个参数2表示向上取整

a.divide(b,sum,3)  //第二个参数sum表示精确位数第三个参数3表示向下取整

a.divide(b,sum,4)  //第二个参数sum表示精确位数第三个参数4表示四舍五入

 

ROUND_CEILING =2;

ROUND_FLOOR =3;

ROUND_HALF_UP =4;

 

## 取余

a.remainder(b)  a%b

 

# 保留小数

double demoX=13.112332425321

## method 1:

DecimalFormat df=new DecimalFormat("0.0000");

String demoX_str=df.format(demoX);

BigDecimal demoX_bd=new BigDecimal(demoX_str);

 

## method 2:

String demoX_str=String.format("%.6f",demoX);

 

## method 3:

BigDecimal demoX_bd=new BigDecimal(String.valueof(demoX));

demoX_bd.setScale(3,2)      //3是新的精度

//String.valueof(XXXX)       把XXX转换成字符串格式

# 多态

多态：同一事件，在不同对象上，出现不同效果。

动态绑定：多态的技术之一

1.类内部多态 2.继承式多态

类内部多态：方法重载--方法同名不同参

继承式多态：必要条件--要有继承关系 要有上转型 要有方法重写

 

toString() 把对象的成员变量名/值 以字符串形式返回

 

若果该类中 重写了toString() 输出对象等同于 输出对象的toString()

 

## 类的类型转换

### 上转型

Animal ani_01=new Dog(); //父类引用（父类类型）

ani_01.ani.color;             //可以调用父类 成员变量

ani_01.play();                //可以调用父类方法

ani_01.do_age;              //无法调用子类 成员变量

ani_01.eat();            //无法调用子类 方法

ani_01.run();            //可以调用子类 重写过的父类方法

 

动态绑定：根据业务的实际需要，父类类型指向不同子类对象，实现不同功能

 

### 下转型：父类引用 赋值给 子类引用

！！！ 原本是哪一个子类对象 下转型只能强转为该子类类型

 

 

# a instanceof B 判断对象a是否为B类对象

# 抽象  abstract

抽象：关键字 abstract 用来设计 用来被继承

abstract 可以修饰 类 方法/函数

## 修饰类：抽象类

1.不能实例化

2.抽象类既可以写抽象方法也可以写普通方法

 

## 修饰方法：抽象方法

1.抽象方法没有方法体

2.抽象方法必须写在抽象类中

 

**抽象类的子类必须重写父类的抽象方法**

 

抽象类中可以有成员变量，目的是让子类有

 

# 接口

接口：关键字 interface 抽象方法的容器

 

实现 ： implements 类声明处 A implements B （A为类 B为接口） 类A实现B接口

​                            类A中 重写B接口抽象方法 

！！！在接口中一个方法没有可见性和修饰词的时候默认 为public abstract

！！！接口无法实例化

！！！接口没有成员变量和构造方法

！！！接口中 所有方法 必须为抽象方法

！！！！接口和类的关系 接口 只能 被类实现

！！！接口支持 多实现

​        一个接口 可以被多个类实现

​        一个类 可以实现多个接口

！！！java接口 多继承

 

接口回调 ： 类型为接口类型 对象为 实现类对象

 

 

抽象类中有构造函数，子类中可以使用

可以，不需要。子类中才需要全部重写

 

 

​     