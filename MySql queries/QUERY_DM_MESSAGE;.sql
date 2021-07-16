set @MESSAGE="123";
set  @SENDNAME= "esrre";
call  dm_notification111(3, @MESSAGE, @SENDNAME);
select @MESSAGE, @SENDNAME;

select message from direct_message where user_one = 3 limit 1;

delimiter $$
create procedure dm_notification111(in user_id int, out msg text, out sender_user_id int)
begin
declare text_ text;
declare display_name varchar(50);
declare uid int;
declare user_cursor cursor for
	select display_name from user where user_id=5;
declare dm_cursor cursor for
	select user_id, message from (select user_two, message, max(date) 
		from direct_message where user_one = user_id limit 1) as T;
open dm_cursor;
fetch dm_cursor into uid,text_;
close dm_cursor;
set msg = text_;
set sender_user_id= uid;
end $$


