select Driver_id,Customer_id from Trip where Distance >10;
INSERT INTO User VALUES ("Aeden", "aeden12221@gmail.com", "123@@!#!4224"," Park Palace ","9872342342",112);
UPDATE User SET Email_id = 'random@example.com' WHERE User_id = 56;
DELETE FROM Customer WHERE Customer_Id = 2;
alter table Driver add column  ExceptionalDriver varchar(3);
UPDATE Driver SET ExceptionalDriver = "Yes" WHERE Ratings >=4;
select Driver_id from Driver where Ratings>3;
select * from Trip ;
DELETE FROM Driver WHERE Ratings <1;
select Driver_id,Customer_id,Distance from Trip Order by Distance  desc;
select Mobile_No,Email_id,User_name from User Order by User_name ;
select Customer_id,Customer_Name,Ratings from Customer Order by Ratings  desc;
alter table Driver drop column ExceptionalDriver;












