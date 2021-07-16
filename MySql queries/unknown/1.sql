delimiter //
create procedure community_of_the_week123(INOUT community_id int) 
begin
SELECT community_id cid, sum(net_vote(post.contribution_id)) s FROM post natural join community group by community_id order by s desc limit 1;

end
//