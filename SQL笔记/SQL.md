# Mysql的注释

--单行注释 ： #  --
--多行注释 ： /*     */	

# 1.对表的操作  

DDL（数据定义语言）

## 1.1 创建表

/*
create table 表名(
字段1 类型 长度 约束，
字段2 类型 长度 约束，
。。。。。。。。。。
字段n 类型 长度 约束
);
*/

```sql
create table student(
id varchar(20) primary key,
name varchar(50),
gender varchar(10),
department varchar(50),
age int(3)
);
```

## 1.2 删除表

（包括表结构） ： drop table 表名；

```sql
drop table student;
drop table if exists student;    --mysql特有
```

## 1.3 查看表结构

desc/describe 表名;

## 1.4 修改表结构之重命名

----  alter table 表名 rename to 新表名;

```sql
alter table emp rename to emp1;
```

## 1.5 修改表结构之删除字段

----  alter table 表名 drop column 字段名;

## 1.6 修改表结构之增加字段

---- alter table 表名 add 字段名 类型(长度);

## 1.7 修改表结构之修改字段

---- alter table 表名 change 字段 新字段 新字段类型(长度);  --mysql写法
---- alter table 表名 rename column 原字段名 to 新字段名;  --oracle写法

## 1.8 修改表结构之修改字段长度

---- alter table 表名 modify 字段名 字段类型;

# 2.对数据的操作 

DML(数据控制语言)

## 2.1 插入数据

```sql
insert into student values('1','张三','男','软件工程',18);
insert into student(name,id,department) values('李四','2','软件工程');  

----mysql可以批量添加数据，oracle不行
insert into student values('4','灵儿','女','信管',24),('5','泡泡','男','计算机',21); 
```

## 2.2 删除数据 

---- delete from 表名 [where 条件]

```sql
delete from student;
delete from student where name='李四';
```

## 2.3 修改数据

----update 表名 set 字段1=值,字段2=值 [where 条件];

```sql
---把软件工程的女学生全部调到信管去
update student set department=信管 where gender='女' and department='软件工程'; 
----把软件工程专业的男生的年龄加一岁
update student set age=age+1 where gender='男' and department='软件工程'
```

## 3. 查询语句（单表）

/*
select 字段列表 
from 表名
[where 过滤条件]
[group by 分组字段
  [having 分组后过滤条件]
]
[order by 排序字段 asc（升序）|desc（降序）]
*/

### 3.1 select语句

/*
可以用以下方式指定字段列表：
*：字段列表为数据源的全部字段
字段列表：指定需要显示的列
给字段指定别名用as（as可以省略）
*/

```sql
select * from student
select id,name,gender from student
select id as 学号, name 姓名, gender 性别 from student
select id,name,age,age+2 from student
```

--谓词distinct的使用：过滤结果集中的重复数据

```sql
--查询所有的专业
select distinct department from student
```

### 3.2 from语句

### 3.3 where语句

#### 3.3.1 比较运算符

（=,>,<,>=,<=,<>,!=）

#### 3.3.2 逻辑运算符

（and并且，or或者，not否定）

----注意：and的优先级是高于or的！！！

```sql
---思考：查询计算机专业和软件工程专业里年龄大于18的人员信息
select * from student where (department='计算机' or department='软件工程') and age>18
```

#### 3.3.3 其他运算符

（in,between and,not in）

--in：后面接一个离散的数据集合
--between and：指定一个范围，包含边界
select * from student where department in('计算机','软件工程') and age>18

#### 3.3.4 模糊查询

利用like进行

---% 匹配0个或任意多个任意字符
---_ 一个_匹配1个任意字符

````sql
--查询名字是3个字符的，包含'王'的学生
select * from student where name like '王_' or name like '_王' or name like '_王_'
select * from student where name like '_' and name like '%王%'
````

### 3.4 order by 

order by 语句：对结果集进行排序
--排序的方向可以是一个或多个字段的升序（asc）或者降序（desc）
--默认的排序是升序，因此asc可以省略

#### 聚合函数

（不包含null的数据）
--累加求和：sum()
--求平均值：avg()
--求最大值：max()
--求最小值：min()
--统计函数：count()
---注意：数据的格式化输出用round()函数，四舍五入

```sql
select sum(salary) 总工资 from member 
select round(avg(salary),2) from member
select count(*) from member   --固定用法，统计表里数据数量
select sum(salary)/count(*) 平均工资 from member
```

### 3.5 group by 

group by 分组
注意：分组后，select后面只能接分组的字段和基于分组的聚合函数，没有其他情况。
--第一类分组的题型：单表分组就可以查询到结果
--统计每个部门的最高工资

```sql
select department,max(salaey) from member group by department
```

--第二类分组题型：一定要通过子查询才能得到正确结果
--查询每个部门最高工资者的数据

# Day01——课后思考

```sql
--查询最高工资高于5000元的部门
select department,max(salary) from member group by department having max(salary)>=5000 

--统计男员工平均工资高于4000元的部门
select department,avg(salary) from member where sex='男' group by department having avg(salary)>=4000

--由于小刘离职了，请删除小刘的数据
delete from member where name='小刘'

--把全部员工的工资涨200块钱
update member set salary=salary+200 

--把吴工调到市场部
update member set department='市场部' where name='吴工'

--工资5000以上（包含5000）涨300元，5000以下涨500元
update member set salary=salary+300 where salary>=5000
update member set salary=salary+500 where salary<5000

--查询部门为'市场部','生产部','人力部'，并且工资大于等于2000元以上的男同志的信息
要求：2种写法
select * from member where department in ('市场部','人力部','生产部') and sex='男' and salary>=2000
select * from member where (department='市场部' or department='人力部' or department='生产部') and sex='男' and salary>=2000

--查询名字里包含'小'的员工信息
select * from member where name like '%小%'

--查询市场部工资在3000至5000元的员工信息
select * from member where department='市场部' and salary between 3000 and 5000

--1. 得到公司所有的部门
--method 1:
select distinct department 
from member 
--method 2:
select department 
from member 
group by department

--2. 得到每个部门及其人数
select department,count(*) 
from member 
group by department

--3. 得到每个部门的最高工资
select department,max(salary) 
from member 
group by department

--4.得到公司中男员工以及女员工的人数
select sex,count(*) 
from member 
group by sex

--5.取得公司男员工和女员工的平均工资
select sex,round(avg(salary),2) 
from member 
group by sex

--1.统计每个部门的最低工资
select department,min(salary) 
from member 
group by department

--2.统计各个部门女员工的最低工资
select department,min(salary) 
from member 
where sex='女' 
group by department 

--3.统计各部门年龄大于23岁的员工平均工资
select department,round(avg(salary),2) 
from member 
where age>23 
group by department

--4.统计各个部门年龄大于23岁的男员工的平均工资
select department,round(avg(salary),2) 
from member 
where age>23 
 and sex='男' 
group by department
```

# 两表连接

/*
笛卡尔积：
    设A、B集合，用A中的元素x作第一元素，
    B中的元素y作第二元素，构成有序对，所有
    这样的有序对组成的集合，叫做A和B的笛卡尔积，
    记作AxB。
    {a,b}   {1,2,3}   {a1,a2,a3,b1,b2,b3}
  注意：
    a.两个表关联查询，如果不加公共列，查询的结果就是笛卡尔积。
    b.笛卡尔积里很多记录都是没有意义的。
    c.两个表关联查询，无体检加上公共列，避免笛卡尔积
*/

```sql
select * from nation,tank
where nation.ID=tank.nid

--统计每个国家生产了几种坦克？
select nation.`NAME`,count(*) 
from nation,tank 
where nation.ID=tank.nid 
group by nation.`NAME`

--能生产2种以上的坦克是哪些国家?
select nation.`NAME`,count(*) 
from nation,tank
where nation.ID=tank.nid
group by nation.`NAME`
having count(*)>=2

--哪些国家只能生产一种坦克？
select nation.`NAME`,count(*) 
from nation,tank
where nation.ID=tank.nid
group by nation.`NAME`
having count(*)=1
```



## 1.表连接

### 1.1 交叉连接

-- from 表1 cross join 表2
--- 注意：查询结果是笛卡尔积，基本不用

```sql
select * from nation cross join tank
```

### 1.2 内连接

-- from 表1 [inner] join 表2 on 表1和表2的公共列
--- 注意：查询结果是两个表共同的部分

```sql
select * from nation join tank on nation.id=tank.nid
```

### 1.3 外连接

#### 1.3.1 左连接

--- from 表1 left join 表2 on 表1和表2的公共列
---- 注意：以左边的表为基础，去连接右边的表。

```sql
select * from nation left join tank on nation.id=tank.nid
```

-- 左外连接 oracle 特有

```sql
select * from nation,tank
where nation.id=tank.nid(+)
```

#### 1.3.2 右连接

--- from 表1 rignt join 表2 on 表1和表2的公共列
---- 注意：以右边的表为基础，去连接左边的表。

```sql
select * from nation right join tank on nation.id=tank.nid
```

-- 右外连接 oracle 特有

```sql
select * from nation,tank
where nation.id(+)=tank.nid
```

#### 1.3.3 全连接 oracle好用！mysql不好用！

-- from 表1 full join 表2 on 表1和表2的公共列

```sql
select * from nation full join tank on nation.id=tank.nid
```

### 1.4 自连接

-- 连接的两个表，其实是一个表。为了区分每一次的使用，给表取不同的别名。
-- 查询员工和直属经理的工资差距

```sql
select emp.name,emp.salary,mg.name,mg.salary,mg.salary-emp.salary 
from emptest emp
left join emptest mg on emp.mgrname=mg.name
```

## 2 交集、并集、差集

### 2.1 并集

利用union/union all 得到

-- union：会自动去除重复的数据
-- union all：会允许重复的数据

```sql
--查询中国、美国生产的坦克
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','美国')
union
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','德国')
```

### 2.2 差集  

利用minus得到  oracle好用！mysql不好用

````sql
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','美国')
minus
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','德国')
````

### 2.3 交集  

利用intersect 得到    oracle好用！mysql不好用

```sql
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','美国')
minus
select nation.name,tank.name
from nation,tank
where nation.id=tank.nid
and nation.name in ('中国','德国')
```

# 子查询

select 字段列表 from 表名
[where 过滤条件]
[group by 分组 [having 分组后过滤]]
[order by 排序字段 asc|desc]

```sql
--思考：大物的最高分和最低分
select subject.name,max(score),min(score)
from subject,score
where subject.id=score.sbjid
and subject.name='大物'
group by subject.name
```

## 1.1 select 子查询  

### 把查询结果当作一个字段来使用

````sql
--思考：大物的最高分和最低分
--子查询：查询大物最高分
select max(score) from score where sbjid='3'
--子查询：查询大物最低分
select min(score) from score where sbjid='3'
--最终查询结果
select name,子查询,子查询 from subject where name='大物'
````

## 1.2 where 子查询：

### --例子1：查询结果当成一个数据来使用

```sql
--思考：高于平均分的纪录
--子查询：查询平均分
select avg(score) from score
--最终查询：
select stu.name,subject.name,score
from stu,subject,score
where stu.id=score.sid
 and subject.id=score.sbjid
 and score>=(select avg(score) from score)
```

### --例子2：查询结果当作一个集合来使用

```sql
--思考：列举出有考试成绩的科目
--方法1：
select distinct subject.name
from subject
left join score on subject.id=score.sbjid
where score.id is not null

--方法2：
--子查询：查询有考试成绩的编号
select distinct sbjid
from score
--最终查询：
select name
from subject
where id in (select distinct sbjid
from score)
```

## 1.3 from 子查询

### --查询结果当做一个表来使用

```sql
--找到男员工中工资最低者和女员工中工资最低者
--子查询：查询男女员工的最低工资
select sex,min(salary)
from member 
group by sex
--最终查询：
select member.*
from member,(select sex,min(salary) 最低工资
from member group by sex) mm
where mamber.sex=mm.sex
 and member.salary=mm.最低工资
```

# Day02——课后思考

```sql

--思考：找出高于公司所有员工的平均工资的男员工数和女员工数
select sex,count(*) from member where salary >= (select avg(salary) from member) 
group by sex;

--思考：得到每个部门最高工资对应的员工
--子查询：查询每个部门最高工资
select department, max(salary) maxSalary
from member group by department;
--最终查询
select member.* from member,
(select department, max(salary) maxSalary
from member group by department) mm
where member.department = mm.department
	and member.salary = maxSalary;

--思考：列举出考试成绩在60分-80分之间的人名及成绩
--子查询：
select score from score where score between 60 and 80

select stu.name,score from stu,score
where stu.id = score.sid
and score in (select score from score where score between 60 and 80)

select stu.name,score from stu,
(select sid,score from score where score between 60 and 80) score
where stu.id = score.sid;


--思考：查询高于各科平均分的学生考试成绩
	查询结果集中显示的字段有：学号，名字，科目，分数，该科目平均分
--子查询：各科平均分
select sbjid,avg(score) avgScore from score group by sbjid;

select stu.*,subject.name,score.score,mm.平均分
from stu,subject,score,(select sbjid,avg(score) 平均分
from score
group by sbjid) mm
where stu.id=score.sid
and subject.id=score.sbjid
and mm.sbjid=subject.id
and score.score>mm.平均分 


--思考：统计每个部门最低工资者信息
SELECT
	me.`name`,
	b.minSal,
	b.department
FROM
	member me,
	(
		SELECT
			department,
			min(salary) AS minSal
		FROM
			member
		GROUP BY
			department
	) AS b
WHERE
	me.department = b.department
AND me.salary = b.minSal;

--思考：统计高于各部门平均工资的员工信息
select member.* from member,
(select department,avg(salary)平均工资 
from member group by department)mm
where member.department =mm.department 
and member.salary > mm.平均工资; 

```

# 函数

/*
    1.函数
*/

## 1.1 decode 函数：

Oracle独有

```sql
SELECT
	id,
	NAME,
	decode( sex, '男', 'male', '女', 'famale' ) 
FROM
	member
```

## 1.2 if函数：

mysql

```sql
SELECT
	id,
	NAME,
IF
	( sex = '男', 'male', sex ) 
FROM
	member
```

## 1.3 concat函数

```sql
--mysql
SELECT
	* 
FROM
	member 
WHERE
	NAME LIKE concat( '%', '王', '%' )
	
```

```sql
--oracle
SELECT
	* 
FROM
	member 
WHERE
	NAME LIKE concat( "CONCAT" ( '%', '王' ), '%' )
```

## 1.4 case when：

```sql
SELECT NAME
	,
	sum( CASE SUBJECT WHEN '语文' THEN score ELSE 0 END ) 语文,
	sum( CASE SUBJECT WHEN '数学' THEN score ELSE 0 END ) 数学,
	sum( CASE SUBJECT WHEN '英语' THEN score ELSE 0 END ) 英语 
FROM
	studentscore 
GROUP BY
NAME
```

# 分页

/*
  分页：把查询结果集的部分记录显示出来
*/
--mysql分页用的是limit
--limit[start],length
--注意：start从0开始！

select * from member limit 8,4;

/*
  oracle：分页用的是 rownum
*/
select rownum,member.* from member where rownum=1

select * from (select rownum no,member.* from member) 
where no>1

--思考：查询工资最低的3个员工信息（member表）
select * 
from member
order by salary
limit 3

select * from (select rownum no,ti.* from (select * from member order by salary) t1)
where no<4