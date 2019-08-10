create database sameer;

create table person(
	name varchar(100),
	salary int
);

insert into person values ('sam',90);
insert into person values ('sam');
insert into person (name) values ('sam');
insert into person (name,salsry) values ('sam',900);

insert into person (name,salary) values ('sam','test');
insert into person (name,salary) values ('sam',2000);
insert into person (name,salary) values ('sam',9820098200);
insert into person (name,salary) values ('sam',99)

create table product(
	id int auto_increment primary key,
	name varchar(100),
	amount decimal(8,2),
	currec timestamp
);
-- 999999.99

insert into product (name,amount) values ('Tshirt',9000);
insert into product (name,amount) values ('jeans',9500);
insert into product (name,amount) values ('shoes',2500);
insert into product (name,amount) values ('sunglass',3600);
insert into product (name,amount) values ('belt',1520);

delete from product;
-- do insert
delete from product where id=8;
insert into product (name,amount) values ('watch',4520);

truncate table product;
drop table product;
-- do insert

update product set name='tv',amount=9000 ;
truncate table product;
--do insert
update product set name='tv',amount=9000 where id=4 ;

-- select columns from table where condition
select * from product;
select name,amount,id from product ;
select * from product where 1;
select * from product where id>2;
select * from product where id<100;
select * from product where id>1 and id<5;
select * from product where id>=1 and id<=5;
select * from product where id between 1 and 5;

select * from product where id =1 or id=4 or id=90;
select * from product where id in(1,4,90);

select * from product where id =1 and id=4 and id=90;
select * from product where name='jeans' or name='shoes';
select * from product where name in('jeans','shoes','pen');
select * from product where id=5 and name='belt';
select * from product where id=5 and name='shoes';
select * from product where id=5 or name='shoes';
select * from product where amount=1520;
select min(amount) from product;

select * from product where amount=(select min(amount) from product);
select * from product where amount=(select max(amount) from product);

select * from product where id>1 order by name ;
select * from product where id>1 order by name asc;
select * from product where id>1 order by name desc;
select * from product where id>1 order by amount desc;
select * from product where 1 order by name asc ;
select * from product where 1 order by name asc limit 0,2;
select * from product where 1 limit 3,2;


create table country(
	id int auto_increment primary key,
	cname varchar(100)
);

insert into country (cname) values ('india');
insert into country (cname) values ('usa');
insert into country (cname) values ('Nepal');

create table state(
	id int auto_increment primary key,
	sname varchar(100),
	cid int
);

insert into state (sname,cid) values ('maharashtra',1);
insert into state (sname,cid) values ('punjab',1);
insert into state (sname,cid) values ('gujarat',1);
insert into state (sname,cid) values ('new york',2);
insert into state (sname,cid) values ('florida',2);
insert into state (sname,cid) values ('machester',3);

select cname,sname from country,state where country.id=cid
select cname,sname from country join state on country.id=cid
select cname,sname from country right join state on country.id=cid
select cname,sname from country left join state on country.id=cid
select cname,sname from country as c,state where c.id=cid


create table products(
	id int auto_increment primary key,
	pname varchar(100)
);

insert into products (pname) values ('tshirt');
insert into products (pname) values ('jeans');
insert into products (pname) values ('sunglass');

create table quantity(
	qid int auto_increment primary key,
	qamount int,
	pid int
);

insert into quantity (qamount,pid) values (10,1);
insert into quantity (qamount,pid) values (25,1);
insert into quantity (qamount,pid) values (32,1);
insert into quantity (qamount,pid) values (36,2);
insert into quantity (qamount,pid) values (46,2);
insert into quantity (qamount,pid) values (98,4);

select id,pname,qamount from products,quantity where id=pid;
select id,pname,qamount from products left join quantity on id=pid;
select id,pname,qamount from products right join quantity on id=pid;

-- select id,pname,sum(qamount) from products,quantity where id=pid;
select id,pname,sum(qamount) from products,quantity where id=pid group by pname;
select id,pname,sum(qamount) from products,quantity where id=pid group by pname having  sum(qamount) >70;
