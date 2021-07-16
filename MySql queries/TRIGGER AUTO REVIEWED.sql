select contribution_id, sum(priority) 
	from report natural join report_type 
    where report_id not in (select report_id from reviews)
    and priority>=5
    group by contribution_id;


select * from reviews;

select * from admin;
insert into admin (admin_id, name, email, password) values (0, 'autoadmin', 'autoadmin', 'autoadmin');

select * from report_type;

select * from report;
insert into report (report_id, date, title, description, report_type_id, user_id, contribution_id) 
	values (23, '2020-08-13', 'cultivate intuitive synergies', 'Duis consequat dui nec nisi volutpat eleifend.', 4, 3, 18);
    
delete from report where report_id=23;


/* YOU cannot POst but you can comment in same community again!!**/

drop trigger auto_review_report;

delimiter $$
create trigger auto_review_report
after insert on report
for each row
begin

	if (NEW.contribution_id in (
		select contribution_id from (select contribution_id, sum(priority) prisum
			from report natural join report_type 
			where report_id not in (select report_id from reviews)
		group by contribution_id) as t where prisum>4)
    )
        then
			insert into reviews (date, contribution_removed, admin_id, report_id)
            values (NEW.date, true, 0, NEW.report_id);
            /*delete from contribution where contribution_id = NEW.contribution_id; /*delete corresponding contribution!!*/
			call `AUTO REVIEWED.`;
    end if;

end $$
