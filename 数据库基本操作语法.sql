show databases;                                                             --显示所有数据库
select now();                                                               --显示当前数据库时间
select version()                                                            --显示当前数据库版本
create database pythonUse;                                                  --创建数据库
show create database [pythonUse];                                           --查询数据库编码
create database [pythonuse] charset=utf8;                                   --创建utf8数据库
drop database [pythonUse];                                                  --删除数据库
use  [pythonUse];                                                           --使用指定数据库
select database();                                                          --查看当前使用的数据库
show tables();                                                              --查看当前数据库所有表
create table [tablename](id int , name varchar(30));                        --创建一个表  
show tables;                                                                --查看表
desc [tablename];                                                           --查看表属性
create table 'tablename'(id int primary key not null , name varchar(30));   --创建一个表  最好带上撇
create table students(
   id    int unsigned not null primary key,
   name  varchar(20),
   class int,
   age   int,
   high  decimal(5,2),
 gendere enum("man","woman","secret")  default "secret",
 cls_id  int unsigned
);

insert into student values(12021115099,"老薛",01,23,2.1,"secret",13);      --向表中插入数据

-- 修改表结构
alter table students add birthdays datatime;                               --添加字段

alter table students modify birthdays date;                                --不修改字段名

alter table students change birthdays birth date default "2020-1-1";       --修改字段名

alter table students drop high;                                            -- 删除字段(多做加法，少做减法)

drop table students;                                                       -- 删除表

-- 显示表的创建信息

show create table students;                                                --显示


-- curd增删改查
insert into tablename values()                                              -- 全部属性必须插入，否则就错
                                                                            -- 可以写default  或者  null  注意主键不可以这样
insert into tablename (属性) values(值)                                      -- 部分插入

insert into tablename (属性) values(值),(值),...                             -- 多行插入

update 表明 set 属性 = 值 [, 属性 = 值 , ...]  where 属性 = 值                 -- 修改表

select * from tablename where 属性 = 值                                       -- 查找

select 属性1 as onthername,属性2 as othername from tablename where 属性 = 值   -- 查找

delete from students                                                          --表中内容全部删除

delete from students where 属性 = 值                                           -- 删除指定记录

--逻辑删除  假的删除
-- 即 用一个字段来表示这条信息是否已经不能再使用了
alter table students add is_delete bit default 0    
update students set is _delete=1 where id=6;    




