select * from reviews group by report_id;
select * from report where report_id not in 
	(select review.report_id from reviews, report where reviews.report_id=report.report_id);

/*Query to list all reports which are not reviewed in order of priority and date*/    
select * from report 
	natural join report_type
	where report_id not in 
		(select report_id from reviews)
	order by priority desc, date desc;