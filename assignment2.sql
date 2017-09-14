select * from t_emp
select * from t_activity1
select * from t_atten_det
select * from t_salary

 
DECLARE @date DATETIME = t_emp.emp_DOB;  
SELECT EOMONTH ( @date ) AS Result;  

select 
emp_f_name+
emp_m_name+
emp_l_name,
emp_DOB
from t_emp where emp_DOB=EOMONTH(emp_DOB)

select * from t_emp
insert into t_emp(emp_code,emp_f_name,emp_m_name,emp_l_name,emp_DOB,emp_DOJ)
values('OPT20130523','manish','','kumar','1994-12-31','2016-09-03')