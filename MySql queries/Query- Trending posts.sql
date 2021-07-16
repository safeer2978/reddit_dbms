select vote_date, count(*) from vote where '2020-12-00'>vote_date and vote_date>'2020-11-00' group by vote_date;

/* Query to get treading posts.- latest posts ordered by number of upvotes.*/
select vote.contribution_id,vote_date, title, post_id, count(*) upvotes from vote, post 
    where vote_boolean=1 
    and is_post_or_comment(vote.contribution_id)=0
    and vote.contribution_id=post.contribution_id
    group by contribution_id
    order by  vote_date desc,count(*) desc
    ;