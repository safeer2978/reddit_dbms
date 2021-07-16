select * from contribution;
select * from comment where post_id=8;
select net_vote(7);

select user_id, post.contribution_id from post join contribution where post_id=1;

set @INUSER=8;
set @OURCONTRI=1;
SET @POST_COMMENT=0;
SET @THEIRUSERID=0;
SET @THEIRCONTRI=0;
set @TEXT="8";
select text from contribution where contribution.contribution_id=8;

call notification_for_contribution14 (@INUSER, @OURCONTRI, @POST_COMMENT, @THEIRUSERID, @THEIRCONTRI, @TEXT);
select @INUSER;
select @OURCONTRI;
select @POST_COMMENT;
select @THEIRUSERID;
select @THEIRCONTRI;
select @TEXT;            