

SET foreign_key_checks = 0;
delete from comment where comment_id=91;
insert into comment (comment_id, post_id, points_to, contribution_id) values (91, 3, 91, 72);


DELIMITER //
create function is_what_func1(id int)
	returns int deterministic
     begin
     declare n int;
     declare n1 int;
     declare n2 int;
     declare c12 CURSOR FOR 
		select count(*) from post where post.contribution_id=id;
     declare c2 CURSOR FOR
		select count(*) from comment where comment.contribution_id=id;
     open c12;
     open c2;
     fetch c12 into n1;
     fetch c2 into n2;
     
     if n1>0  then
		set n=0;
	 elseif n2>0 then
		set n=1;
	 else
		set n=2;
	end if;
     
     close c12;
     close c2;
     return n;
     end
//

