delimiter //
create procedure notification_for_contribution(IN user_id INT,
			IN our_contribution_id INT,
			OUT post_or_comment INT,
            OUT their_user_id INT,
            OUT their_contribution_id INT,
            OUT text_ TEXT) 
begin
declare our_comment_id int;
declare our_post_id int;
declare result int;
declare somer int;
declare text_out text;
declare get_text_cursor cursor for 
	select text from contribution where contribution_id=their_contribution_id;
declare get_reply_to_comment cursor for 
	select user_id, contribution_id from comment where points_to=result;
declare get_reply_to_post cursor for 
	select user_id, post.contribution_id from post join contribution where post_id=result;
declare get_post_id cursor for 
	select post_id from post where contribution_id=our_contribution_id limit 1;
declare get_comment_id cursor for 
	select comment_id from comment where contribution_id=our_contribution_id limit 1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET our_post_id = 1;



open get_reply_to_comment;
open get_post_id;
open get_comment_id;    
set post_or_comment = (select is_post_or_comment(our_contribution_id));
if(post_or_comment=0) then
	fetch get_post_id into result;
    open get_reply_to_post;
    fetch from get_reply_to_post into result,somer;
    set their_user_id = result;
    set their_contribution_id=somer;
elseif(post_or_comment=1) then
	fetch get_comment_id into result;
    close get_reply_to_comment;
    open get_reply_to_comment;
    fetch from get_reply_to_comment into result,somer;
    set their_user_id = result;
    set their_contribution_id=somer;
    
end if;

select somer, result;
open get_text_cursor;
fetch get_text_cursor into text_out;
set text_=text_out;
close get_text_cursor;
close get_reply_to_comment;
close get_reply_to_post;
close get_post_id;
close get_comment_id;

end
//