insert into user (user_id, about, display_name, nsfw_flag, account_id) values (20, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'Leilah', true, 10);


delimiter $$
create trigger insertUsertrigger
before insert on user
for each row
begin

	if NEW.account_id not in (
		select account_id from account)
        then
			call `USER ERROR: need to create account before inserting`;
    elseif NEW.account_id in (
		select account_id from user
        ) 
        then
		call `USER ERROR: account already mapped`;
    end if;

end $$
