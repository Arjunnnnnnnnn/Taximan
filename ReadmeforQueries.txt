The queries are given below -

1.select Driver_id,Customer_id from Trip where Distance >10;
- Displays Driver_id,Customer_id from table Trip where Distance >10.


2.INSERT INTO User VALUES ("Aeden", "aeden12221@gmail.com", "123@@!#!4224"," Park Palace ","9872342342",112);
- Inserts "Aeden", "aeden12221@gmail.com", "123@@!#!4224"," Park Palace ","9872342342",112 into the table User.


3.UPDATE User SET Email_id = 'random@example.com' WHERE User_id = 56;
-Updates the Email_id of the user with User_id=66.


4.DELETE FROM Customer WHERE Customer_Id = 2;
-Deletes the row with Customer_Id=2 .


5.alter table Driver add column  ExceptionalDriver varchar(3);
-Adds a column ExceptionalDriver to Driver table.


6.UPDATE Driver SET ExceptionalDriver = "Yes" WHERE Ratings >=4;
-Set ExceptionalDriver to Yes when Ratings are greeted than or equal to 4.


7.select Driver_id from Driver where Ratings>3;
-Displays all Driver_ids where Rating is greater than 3.


8.select * from Trip ;
-Displays all columns and records from the Trip table.


9.DELETE FROM Driver WHERE Ratings <1;
-Deletes the row with Driver with rating<1 .


10.select Driver_id,Customer_id,Distance from Trip Order by Distance  desc;
-Displays Driver_id,Customer_id,Distance in descending order of Distance.


11.select Mobile_No,Email_id,User_name from User Order by User_name ;
-Displays Mobile_No,Email_id,User_name in ascending order of User_name.


12.select Customer_id,Customer_Name,Ratings from Customer Order by Ratings  desc;
-Displays  Customer_id,User_Name,Ratings in descending order of Rating.


13.alter table Driver drop column ExceptionalDriver;
-Delete/drop ExceptionalDriver from Driver table.