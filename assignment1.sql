
select username,product_name,orderd_quantity,amount_paid,last_date,
orderd_quantity * 
case
		when product_ID='p1' or product_ID='p2' or product_ID='p3'
		then a.cost_per_item 
	    else 1 end - amount_paid as balance 
from (
select username,product_name,cost_per_item,t_product_master.product_ID,max(t_transaction.transaction_date) as last_date,
sum(case 
          when transaction_type='order' 
		  then transaction_amount 
		  else 0 end) as orderd_quantity,
sum(case 
          when transaction_type='payment' 
		  then transaction_amount 
		  else 0 end) as amount_paid
from t_user_master
left join t_transaction 
on t_user_master.userID=t_transaction.userID
left join t_product_master 
on t_product_master.product_ID=t_transaction.product_ID
group by  username,t_product_master.product_ID,cost_per_item,product_name
)a


