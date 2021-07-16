select sum(price) from subscription s,subscription_plan t where s.sub_type=t.plan_id and payment_date<2020-1-15;

select min(payment_date),max(payment_date) from subscription;

select * from award_type;

select name,SUM([price]), contribution_id from award_transaction natural join award_type;

select user_id,date_posted, price from contribution
	natural join 
		(select price, contribution_id from award_transaction natural join award_type)
        As T;

select user_id,display_name,price,date_posted from user
	natural join
		(select user_id,date_posted, price from contribution
			natural join 
				(select price, contribution_id from award_transaction natural join award_type)
			As T)
        as T;
        
/* Final Query */        
select user_id,display_name,sum(price) reward from user
	natural join
		(select user_id,date_posted, price from contribution
			natural join 
				(select price, contribution_id from award_transaction natural join award_type)
			As T) as T
        group by user_id, display_name
        order by reward desc
        limit 5;