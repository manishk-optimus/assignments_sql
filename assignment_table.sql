create table t_product_master(
product_ID varchar(2),
product_name varchar(20),
cost_per_item int);

select * from t_product_master
select * from t_user_master
select * from t_transaction;

insert into t_product_master
values('p3','notebook',25);


create table t_user_master(
userID varchar(2),
username varchar(20));


insert into t_user_master
values('u3','edward fillips');


create table t_transaction(
userID varchar(2),
product_ID varchar(2),
transaction_date date,
transaction_type varchar(10),
transaction_amount int); 



insert into t_transaction
values('u3','p2','2011-01-15','order',250);

