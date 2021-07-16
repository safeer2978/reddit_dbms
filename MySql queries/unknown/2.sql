SELECT * FROM reddit.report;
select net_vote(contribution_id) from contribution where contribution_id=2;
set @id=0;
call community_of_the_week123(@id);
select @id;

SELECT community_id cid, sum(net_vote(post.contribution_id)) s FROM post natural join community group by community_id order by s desc limit 1;