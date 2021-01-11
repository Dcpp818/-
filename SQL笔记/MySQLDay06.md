# 1. 视图

视图：一个sql语句的定义，本质是个虚表

/*  与表的区别：

​    表：实实在在储存数据的

​	视图：虚表。实际只是一个sql语句的定义

​			视图的作用：

​			a、安全性。可以创建视图，隐藏表的部分敏感字段

​			b、简化sql。可以给多表联查的结果创建视图，进一步查询视图，简化查询sql

*/

## 1.1 视图的创建

```sql
create or replace view member_view as 
select id,name,sex,department
from member
```

## 1.2 视图的查询

视图的查询：就跟查询单表一样

--对视图的查询都会转为对基本表的查询

```sql
select * from member_view
```

## 1.3 视图的修改

--对视图的修改都会转为对基本表的修改

```sql
update member_view set name='小赵视图修改' where id='4'
```

## 1.4 视图删除

```sql
drop view member_view
```



```sql
create or replace view stuScore_view as
select stu.name student,subject.name subject,score
from stu,subject,score
where stu.id=score.sid
  and subject.id=score.sbjid
  
select * from stuScore_view
where student='张三'

insert into stuScore_view values('李四','国学1',98) --失败。因为视图里是多表
insert into mamber_view values(11,'张11','男','生产部')--正确。因为视图里是单表
```

# 2. 索引

/*

   概念：索引是根据指定的数据库表列  建立起来的顺序

作用：

​		1、提高效率：创建索引不是为了在sql语句中使用，而是可以大大提高系统的性能。

​		2、监督数据：如唯一性索引，使其索引所指向的列中的数据不重复

*/

## 2.1 创建索引

```sql
create index index_member_name on member(name)
```

## 2.2 删除索引

```sql
drop index index_member_name on member
```



```sql
--演示索引的效率
--创建表结构
create table test1(
id int primary key auto_increment,
name varchar(30)
);

insert into test1(name) values('sss')

create index index_test1 on test1(name)

select * from test1 where name='名字99999999'
```

# 3. 序列

sequence   oracle独有

--概念：有规律的数值

```sql
CREATE SEQUENCE sequence //创建序列名称
[INCREMENT BY n] //递增的序列值是 n 如果 n 是正数就递增,如果是负数就递减 默认是 1
[START WITH n] //开始的值,递增默认是 minvalue 递减是 maxvalue
[{MAXVALUE n | NOMAXVALUE}] //最大值  
[{MINVALUE n | NOMINVALUE}] //最小值
[{CYCLE | NOCYCLE}] //循环/不循环
[{CACHE n | NOCACHE}];//分配并存入到内存中
```

## 3.1 创建序列

```sql
create sequence member_id_seq
start with 10
increment by 1 maxvalue 99999  --最大值为27个9
nocycle
```

## 3.2 使用序列

### 3.2.1 下一个序列的值

```sql
select member_id_seq.nextval 
from dual
```

### 3.2.2 当前序列的值

```sql
select member_id_seq.currval
from dual
```

## 3.3 添加数据时，利用序列设置主键的值

```sql
insert into mamber values(member_id_seq.nextval,'张7','男',6500,'生产部')
```

## 3.4 删除序列

```sql
drop sequence member_id_seq
```

