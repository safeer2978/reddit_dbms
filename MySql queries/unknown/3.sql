
	select community_id, count(contribution_id) from contribution join community group by community_id;
SELECT * FROM post natural join community;

SELECT community_id cid, sum(net_vote(post.contribution_id)) s FROM post natural join community group by community_id;

select cid, max(s) from (SELECT community_id cid, sum(net_vote(post.contribution_id)) s FROM post natural join community group by community_id) as T ;