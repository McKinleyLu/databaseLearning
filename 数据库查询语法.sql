-- 创建数据库
create database python_test charset=utf8;

-- 查看数据库
show databases;

-- 使用数据库
use python_test;

-- 显示当前使用那个数据库
select database();

--创建一个数据表  存0 1时使用bit 就行  bit(2)可以存4种 tinyint = bit(8)  2^8 = 256
create table studuent(
    id int unsigned primary key auto_increment not null,
    name varchar(20) default '',
    age tinyint unsigned default 0,
    height decimal (5,2),
    gender enum('男', '女', '中性', '保密') default '保密',
    cls_id int unsigned default 0,
    is_delete bit default 0
);

create table classes(
    id int unsigned auto_increment primary key not null,
    name varchar(30) not null
);

-- 向表中插入数据
insert into studuent values
    (0,'小明',18,168.00,2,1,0),
    (0,'小黄',17,175.00,1,2,0),
    (0,'小红',14,177.00,2,3,0),
    (0,'小汉',11,180.00,3,4,0),
    (0,'小八',12,187.00,3,5,0),
    (0,'小九',13,182.00,4,6,0),
    (0,'小十',18,188.00,3,7,0),
    (0,'小之',17,186.00,2,8,0),
    (0,'小一',10,188.00,2,9,0),
    (0,'小二',15,182.00,3,9,0),
    (0,'小三',18,184.00,2,6,0),
    (0,'小四',19,185.00,4,4,0),
    (0,'小五',13,190.00,2,3,0),
    (0,'小六',14,189.00,2,4,0),
    (0,'小七',15,178.00,2,5,0),
    (0,'十一',15,167.00,1,7,0),
    (0,'十二',18,176.00,1,2,0);

insert into classes values
    (0, "python01期"),
    (0, "python02期"),
    (0, "python04期");

show tables ;

desc classes;

select * from studuent;


-- 条件查询
   -- 比较运算符号  > <  <=  >=    != == <>
   -- 逻辑运算符    and   or   not    and
   -- 模糊查询      like '张%三'      "_"一个下划线，值有一个字符  两个下划线,值由两个字符
   -- 正则查询      select name from students where name rlike "周*伦$"
   


-- 排序
  -- order by
  -- asc升序   desc降序
  -- 默认升序
  select * from students where(age between 18 and 28) and gender = 'man' order by age desc
    
    
-- 聚合函数
   -- 总数  count
   select count(*) as 男性人数 from students where gender = 'man'
   -- 求和  sum
   select sum(age) from studuent
   -- 计算平均值 avg
   select avg(age) from studuent
   -- 四舍五入  保留两位小数
   select round(sum(age)/count(*) , 2) from studuent


-- 拆表
--1. 创建新的表
     create table if not exists goods_cate();
--2. select cate_name from goods group by cate_name

--3. 将分组写入到goods_cates 注意这里不加vaules
     insert into goods_cates (name)  select  cate_name from goods group by cate_name
--4. 同步数据
     update goods  as g inner join goods_cates as c on g.cat_name = c.name  set g.cate_name = c.id
   
