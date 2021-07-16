use bdbhzpphkursjzj6asli;
select *
	from chat_room_message;
select * from chat_room;
desc chat_room;

select chat_room_message.user_id, count(cmessage_id) 
	from chat_room_message,chat_room 
	where chat_room.room_id=chat_room_message.room_id 
	group by user_id 
	order by count(cmessage_id) desc
    limit 10;
    
select room_id, user_id, count(cmessage_id)
from chat_room_message 

group by room_id,user_id; 

select * from chat_room_message where user_id=7 and room_id=1;

select chat_room.room_id rid, count(cmessage_id)
	from chat_room_message,chat_room
	where chat_room.room_id=chat_room_message.room_id 
	group by chat_room.room_id
	order by count(cmessage_id) desc;

select count(distinct user_id) user_count_per_room 
		from chat_room_message 
        group by chat_room_message.room_id;
        
select room_id, count(user_id) cuid from chat_room_message group by chat_room_message.room_id;
select count(distinct user_id) from chat_room_message group by room_id;

select max(message_count) number_of_messages ,user_id,room_id from
(
select count(*) message_count, user_id, room_id from chat_room_message group by user_id, room_id)
as T group by room_id ;

select count(*) from chat_room_message where user_id=12 and room_id=4;


select chat_room.room_id rid,title,count(cmessage_id) total_messages, top_user most_active_user, display_name users_name, number_of_messages messages_by_user
	from user, chat_room_message,chat_room,(
    select max(message_count) number_of_messages ,user_id top_user, room_id crid from
		(select count(*) message_count, user_id, room_id
			from chat_room_message 
            group by user_id, room_id)
			as T group by room_id)
            as T
	where chat_room.room_id=chat_room_message.room_id
		and chat_room_message.room_id=crid
        and user.user_id=top_user
	group by chat_room.room_id
	order by count(cmessage_id) desc;





