use instagramdb;

# ADD COLUMN
ALTER TABLE instagramuser
ADD COLUMN Country VARCHAR(25) DEFAULT "INDIA"; 

# DROP COLUMN
ALTER TABLE instagramuser
DROP COLUMN Follower;

# RENAME COLUMN
ALTER TABLE instagramuser
CHANGE COLUMN AGE Age INT ;


select * from instagramuser;


