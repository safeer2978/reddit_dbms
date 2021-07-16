DELIMITER //
create function calculate_karma(uid int)
	returns int deterministic
     begin
     declare karma int;
     declare temp int;
     declare post_count_cursor CURSOR FOR 
		select count(*) from contribution where user_id = uid and is_post_or_comment(contribution_id)=0;
	declare comment_count_cursor CURSOR FOR 
		select count(*) from contribution where user_id = uid and is_post_or_comment(contribution_id)=1;
     declare upvote_count_cursor CURSOR FOR
		select count(*) from vote where vote_boolean=1;
	declare award_count_cursor CURSOR FOR 
		select count(*) from award_transaction, contribution where contribution.contribution_id= award_transaction.contribution_id and contribution.user_id= uid;
        
	set karma=0;
     open post_count_cursor;
     open comment_count_cursor;
     open upvote_count_cursor;
     open award_count_cursor;
     
     fetch post_count_cursor into temp;
     set karma = karma+(10*temp);
     
     fetch comment_count_cursor into temp;
     set karma = karma+(5*temp);
     
     fetch upvote_count_cursor into temp;
     set karma = karma+(2*temp);
     
     fetch award_count_cursor into temp;
     set karma = karma+(8*temp);
     
     close post_count_cursor;
     close comment_count_cursor;
     close upvote_count_cursor;
     close award_count_cursor;
     
     return karma;
     end
//