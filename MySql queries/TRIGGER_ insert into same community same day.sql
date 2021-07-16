select * from community;
select user_id, calculate_karma(user_id) from user; 
/**8	2020-08-25**/

select * from post natural join contribution;


select * from contribution where contribution_id=100;

insert into contribution (contribution_id, text, date_posted, user_id) values (100, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2020-10-23', 6);
insert into post (post_id, title, link, community_id, contribution_id) values (100, 'WALL·E', 'http://dummyimage.com/167x199.bmp/ff4444/ffffff', 9, 100);


select * from post;

/* YOU cannot POst but you can comment in same community again!!**/

delimiter $$
create trigger post_again_community_same_date1
before insert on post
for each row
begin

	if (select date_posted from contribution where contribution_id=NEW.contribution_id) in (
		select date_posted from post natural join contribution 
			where user_id = (select user_id from contribution where contribution_id = NEW.contribution_id)
            and community_id=NEW.community_id
    )
        then
			delete from contribution 
				where contribution_id=NEW.contribution_id;	/*delete corresponding contribution!!*/
			call `only one post per day per community`;
    end if;

end $$
