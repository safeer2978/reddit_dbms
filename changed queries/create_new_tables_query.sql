create table account (
	account_id INT primary key,
	email VARCHAR(50),
	username VARCHAR(50),
	password VARCHAR(50),
	image_link VARCHAR(250)
);

create table user (
	user_id INT primary key,
	about TEXT,
	display_name VARCHAR(50),
	nsfw_flag BOOLEAN,
	account_id INT,foreign key(account_id) references account(account_id),
	CONSTRAINT uc_user_account UNIQUE (user_id , account_id)
);

create table advertisement_account (
	ad_account_id INT primary key,
	company_name VARCHAR(50),
	industry VARCHAR(50),
	permission_id INT,foreign key(permission_id) references permission(permission_id),
	account_id INT,foreign key(account_id) references account(account_id),
	CONSTRAINT uc_user_account UNIQUE (ad_account_id , account_id)
);

create table contribution (
	contribution_id INT primary key,
	text TEXT,
	date_posted DATE,
	user_id INT, foreign key(user_id) references user(user_id)
);

create table post (
	post_id INT primary key,
	title TEXT,
	link VARCHAR(250),
	community_id INT,foreign key(community_id) references community(community_id),
	contribution_id INT, foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_post_contribution UNIQUE (post_id , contribution_id)
);

create table comment (
	comment_id INT primary key,
	post_id INT,foreign key(post_id) references post(post_id),
	points_to INT,foreign key(comment_id) references comment(comment_id),
	contribution_id INT,foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_comment_contribution UNIQUE (comment_id , contribution_id),
);

create table campaign (
	campaign_id INT primary key,
	name VARCHAR(50),
	funding_id INT,foreign key(funding_id) references funding(funding_id),
	ad_account_id INT,foreign key(ad_account_id) references advertisement_account(ad_account_id),
	objective_id INT,foreign key(objective_id) references objective(objective_id)
);

create table ad_post (
	ad_id INT primary key,
	title VARCHAR(50),
	link VARCHAR(200),
	name VARCHAR(50),
	ad_group_id INT,foreign key(ad_group_id) references ad_group(ad_group_id)
);

create table vote (
	vote_id INT primary key,
	vote_date DATE,
	vote_boolean BOOLEAN,
	user_id INT,foreign key(user_id) references user(user_id),
	contribution_id INT,foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_user_contribution UNIQUE (user_id , contribution_id)
);

create table save (
	save_id INT PRIMARY KEY,
	date DATE,
	user_id INT,foreign key(user_id) references user(user_id),
	contribution_id INT,foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_user_contribution UNIQUE (user_id , contribution_id)
);

create table award_transaction (
	award_transaction_id INT,
	date DATE,
	appstore_ref VARCHAR(50),
	award_id INT,foreign key(award_id) references award_type(award_id),
	user_id INT,foreign key(user_id) references user(user_id),
	contribution_id INT,foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_user_contribution_award UNIQUE (user_id , contribution_id, award_id)
);

create table posts_can_have_tags (
	post_tag_id INT primary key,
	post_id INT,foreign key(post_id) references post(post_id),
	tag_id INT,foreign key(tag_id) references tag(tag_id),
	CONSTRAINT uc_post_tag UNIQUE (post_id, tag_id)
);

create table report (
	report_id INT primary key,
	date DATE,
	title VARCHAR(50),
	description TEXT,
	report_type_id INT,foreign key(report_type_id) references report_type(report_type_id),
	user_id INT,foreign key(user_id) references user(user_id),
	contribution_id INT,foreign key(contribution_id) references contribution(contribution_id),
	CONSTRAINT uc_user_contribution UNIQUE (user_id , contribution_id)
);

create table  community (
	community_id INT primary key,
	name VARCHAR(50) not null,
	description VARCHAR(50),
	creation_date DATE not null,
	user_id INT,foreign key(user_id) references user(user_id)
);

create table follows_community (
	follows_community_id INT primary key,
	community_id INT,foreign key(community_id) references community(community_id),
	user_id INT,foreign key(user_id) references user(user_id),
	CONSTRAINT followers UNIQUE (community_id , user_id)
);

create table moderator (
	moderator_id INT primary key,
	user_id INT,foreign key(user_id) references user(user_id),
	community_id INT,foreign key(community_id) references community(community_id),
	CONSTRAINT uc_moderator UNIQUE (community_id , user_id)
);

create table about_section_entry (
	about_id INT primary key,
	date_added DATE not null,
	title VARCHAR(50) not null,
	description VARCHAR(50),
	links VARCHAR(300),
	community_id INT,foreign key(community_id) references community(community_id)
);
