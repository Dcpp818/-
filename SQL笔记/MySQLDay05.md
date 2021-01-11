# Day04课后思考

--思考：查询各人员所在公司信息

```sql
select sales.name,company.name 
from sales 
left join company 
on sales.companyid=company.id
group by sales.name
```

| name | name(1)    |
| ---- | ---------- |
| 关羽 | 蜀国分公司 |
| 吕布 |            |
| 周泰 | 魏国分公司 |
| 张辽 | 魏国分公司 |
| 张飞 | 蜀国分公司 |
| 徐晃 | 魏国分公司 |
| 甘宁 | 吴国分公司 |
| 赵云 | 蜀国分公司 |
| 马超 | 蜀国分公司 |
| 黄忠 | 蜀国分公司 |
| 黄盖 | 吴国分公司 |

--思考：得到各公司的人数

```sql
select company.name,count(sales.id)
from sales
right join company on sales.companyid=company.id
group by company.name
```

| name         | count(sales,id) |
| ------------ | --------------- |
| 吴国分公司   | 2               |
| 蜀国分公司   | 5               |
| 西南夷分公司 | 0               |
| 魏国分公司   | 3               |

--思考：得到各公司的销售总额

```sql
select company.name,sum(ifnull(sales.salesvolume,0))
from sales
right join company 
on sales.companyid=company.id
group by company.name
```

| name         | sum(infull(sales.salesvolume,0)) |
| ------------ | -------------------------------- |
| 吴国分公司   | 8000                             |
| 蜀国分公司   | 50500                            |
| 西南夷分公司 | 0                                |
| 魏国分公司   | 26000                            |

--思考：找出销售业绩最高的个人及所在的公司

```sql
--方法一：结果是吕布的数据，没有公司
select sales.name,company.name
from sales 
left join company 
on sales.companyid=company.id
where salesvolume=(select max(salesvolume) 
                   from sales)
```

| name | name(1) |
| ---- | ------- |
| 吕布 |         |

```sql
--方法二：结果是赵云的数据
select sales.name,company.name
from sales,company
where sales.companyid=company.id
 and salesvolume=(select max(salesvolume) 
                  from sales,company 
                  where sales.companyid=company.id)
```

| name | name(1)    |
| ---- | ---------- |
| 赵云 | 蜀国分公司 |

--思考：薪水比andy高的人员名单（emptest表）

```sql
select * 
from emptest
where salary>(select salary 
			  from emptest
              where name='andy')
```

| id   | name     | salary | mgrname | deptno | depyname       |
| ---- | -------- | ------ | ------- | ------ | -------------- |
| 2    | zhangsan | 8000   | meng    | 601    | 第一系统发展部 |
| 3    | alin     | 5220   | lix     | 602    | 第二系统发展部 |
| 4    | lix      | 8050   | lixue   | 602    | 第二系统发展部 |
| 5    | lixue    | 9320   | lixue   | 602    | 第二系统发展部 |

--思考：哪个部门的平均薪水最高（emptest表）

```sql
--子查询1：每个部门的平均薪水
select depyname,avg(salary) avgSalary
from emptest 
group by depyname
--子查询2：查询平均薪水最高
select max(avgSalary)
from (select depyname,avg(salary) avgSalary
      from emptest 
      group by depyname) mm
--最终结果：
select depyname
from (select depyname,avg(salary) avgSalary
      from emptest 
      group by depyname) tt
where avgSalary=(select max(avgSalary)
                 from (select depyname,avg(salary) avgSalary
                       from emptest 
                       group by depyname) mm)
```

| depyname       |
| -------------- |
| 第二系统发展部 |

--思考：各个部门中工资大于5000的员工人数

```sql
select depyname,count(*)
from emptest
where salary>5000
group by depyname
```

| depyname       | count(*) |
| -------------- | -------- |
| 第一系统发展部 | 1        |
| 第二系统发展部 | 3        |



# 约束

1. not null：非空约束
2. unique：唯一性约束
3. primary key   主键、就是不能为空约束+唯一性约束、一张表的设计用主键
4. foreign key   外键、用来设计多张表
5. check   检查型约束
6. default  某个字段赋默认值



/*

约束：

  保证数据的完整性

  not null：非空约束

  unique：唯一性

  check：检查型约束

  default：默认值

  primary key：主键

  foreign key：外键

*/

## 1.1 创建表时指定约束

```sql
create table tableTest1(
	id int primary key,
	name varchar(20) unique,
	sex varchar(6) default '男',
	age int check(age between 0 and 150),
    department varchar(30) not null
);

--添加数据  OK
insert into tableTest1 values(1,'张1','男',20,'计算机');
--添加失败  违反name的唯一性约束
insert into tableTest1 values(2,'张1','女',20,'计算机');
--添加数据  OK  利用了sex的默认值
insert into tableTest1(id,name,age,department) 
values (3,'张3',22,'计算机');
--添加数据  OK  mysql的check约束不好用！！！Oracle好用！！
insert into tableTest1 values(4,'张4','男',160,'计算机');
--添加数据  违反department的非空约束
insert into tableTest1(id,name,age) values(5,'张5',25);
```

## 1.2 主键约束

### 1.2.1 创建表时指定主键

```sql
create table tableTest2(
id varchar(16),
name varchar(20),
score varchar(3) not null,
constraint aabb primary key(id,name)  --复合主键
);
```

```sql
insert into tableTest2(id,score) values('1001','90');
insert into tableTest2 values('1002','张2','90');
```

### 1.2.2 删除主键

```sql
alter table tableTest2 drop primary key;
```

### 1.2.3 创建表后添加主键

```sql
alter table tableTest2 add constraint tableTest2_pri primary key(id,name);
```

## 1.3 外键约束

### 1.3.1 创建表时指定外键约束

```sql
create table nationTest(
id number(10) primary key,
name varchar2(20) not null,
);
```

```sql
create table tankTest(
id number(10) primary key,
name varchar2(20) not null,
nid number(10),
foreign key(nid) references nationTest(id)
);
```

### 1.3.2 创建表后添加外键约束

```sql
alter table tankTest add constraint foreign_nid foreign key(nid) references nationTest(id);
```

### 1.3.3 删除外键约束

--mysql不好用，Oracle好用！

```sql
alter table tabkTest drop constraint foreign_nid;
```

--mysql好用

```sql
alter table tankTest drop foreign key foreign_nid;
```

## 1.4 自增长 mysql特有

```sql
create table tableTest3(
id int primary key auto_increment,
name varchar(20)
);
```





























































