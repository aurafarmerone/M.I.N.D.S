use instagramdb;

set SQL_SAFE_UPDATES = 0;

update instagramuser
set age=16
where id=102;

update instagramuser
set follower=100
where age > 15;

select * from instagramuser;
