select contribution_id, text, net_vote(contribution_id), is_post_or_comment(contribution_id) from contribution where net_vote(contribution_id)<-2;
