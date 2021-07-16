create table tag (
	tag_id INT primary key,
	title VARCHAR(50) not null,
	font VARCHAR(6) not null
);

create table award_type (
	award_id INT primary key,
	name VARCHAR(50) not null,
	description VARCHAR(150),
	price VARCHAR(50),
	image_link VARCHAR(250)
);

create table report_type (
	report_type_id INT primary key,
	priority INT ,
	report_type_name VARCHAR(25)
);

create table subscription_plan (
	plan_id INT primary key,
	duration INT not null,
	price INT
);

create table permission (
	permission_id INT primary key,
	permission_level VARCHAR(13)
);

create table funding (
	funding_id INT primary key,
	funding_type VARCHAR(11)
);

create table device (
	device_id INT primary key,
	device_type VARCHAR(7)
);

create table budget (
	budget_id INT primary key,
	budget_type VARCHAR(15)
);

create table objective (
	objective_id INT primary key,
	objective_type VARCHAR(23),
	cost_type VARCHAR(3)
);

create table admin (
	admin_id INT,
	name VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),
	primary key (admin_id)
);

create table follows_user (
	follow_id INT primary key,
	user_id_follower INT,foreign key(user_id_follower) references user(user_id),
	user_id INT,foreign key(user_id) references user(user_id),
	CONSTRAINT uc_follwer_user UNIQUE (user_id_follower, user_id)
);

create table direct_message (
	dmessage_id INT, primary key(dmessage_id),
	date DATE not null,
	message TEXT not null,
	user_one INT, foreign key(user_one) references user(user_id) ,
	user_two INT, foreign key(user_two) references user(user_id) 
);
create table chat_room (
	room_id INT primary key,
	title VARCHAR(50),
	description VARCHAR(250),
	user_id INT, foreign key(user_id) references user(user_id)
);

create table chat_room_message (
	cmessage_id INT,
	message TEXT,
	date DATE,
	room_id INT, foreign key(room_id) references chat_room(room_id),
	user_id INT, foreign key(user_id) references user(user_id),
	primary key (cmessage_id)
);

create table join_chatroom (
	join_id INT primary key,
	room_id INT, foreign key(room_id) references chat_room(room_id),
	user_id INT, foreign key(user_id) references user(user_id),
	CONSTRAINT uc_room_user UNIQUE (room_id, user_id)
); 

create table subscription (
	sub_id INT primary key,
	sub_type INT, foreign key(sub_type) references subscription_plan(plan_id),
	start_date DATE not null,
	end_date DATE not null,
	payment_date DATE not null,
	user_id INT, foreign key(user_id) references user(user_id)
);

create table reviews (
	review_id INT, primary key(review_id),
	date DATE not null,
	contribution_removed bool,
	admin_id INT, foreign key(admin_id) references admin(admin_id),
	report_id INT, foreign key(report_id) references report(report_id)
);

create table ad_group (
	ad_group_id INT primary key,
	name VARCHAR(50),
	location VARCHAR(50),
	schedule DATE,
	budget_id INT, foreign key(budget_id) references budget(budget_id),
	device_id INT, foreign key(device_id) references device(device_id),
	campaign_id INT, foreign key(campaign_id) references campaign(campaign_id)
);