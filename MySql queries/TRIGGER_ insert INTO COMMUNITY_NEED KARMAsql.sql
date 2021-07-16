select * from community;
select user_id, calculate_karma(user_id) from user; 

insert into  community (community_id, name, description, creation_date, user_id) 
	values (11, 'new Subreddit', 'Some new subreddit ', '2020-05-06 14:11:37', 19);

delimiter $$
create trigger community_karma_requirement
before insert on community
for each row
begin

	if calculate_karma(NEW.user_id) < 400
        then
			call `USER ERROR: CANNOT CREATE COMMUNITY WITHOUT ATLEAST 400 Karma `;
    end if;

end $$
