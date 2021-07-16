select user_id,display_name,sum(price) reward from user
	natural join
		(select user_id,date_posted, price from contribution
			natural join 
				(select price, contribution_id from award_transaction natural join award_type)
			As T) as T
        group by user_id, display_name
        order by reward desc
        limit 5;