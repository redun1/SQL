-- create videos table
CREATE TABLE Videos (
     VideoID int NOT NULL,    
     title varchar(255),
     duration int , --to allow for '20m'
	url varchar(255),
 	PRIMARY KEY (VideoID)
 );

--alter videos table
ALTER TABLE Videos
RENAME COLUMN duration TO duration_in_minutes;
select * from Videos;


--create reviewers table
CREATE TABLE Reviewers (
user_id int NOT NULL,    
f_name varchar(255),
l_name varchar (255),
rating int,
review varchar(255),
VideoID int NOT NULL,
 PRIMARY KEY (user_id)
 );

select * from Reviewers;


--fill up Videos table
INSERT INTO Videos VALUES (1, 'Blooming Flowers Timelapse','20','https://www.youtube.com/watch?v=pZVdQLn_E5w&ab_channel=NextObserver');
INSERT INTO Videos VALUES (2, 'Full Moon Video HD','5','https://www.youtube.com/watch?v=dVYl5ImNjow&ab_channel=FreeHDvideos-nocopyright');
INSERT INTO Videos VALUES (3, 'Stars 101','3','https://www.youtube.com/watch?v=EFO_bsg1sw8&ab_channel=NationalGeographic');

select * from videos;

select * from Reviewers;

-- fill up Reviewers table
INSERT INTO Reviewers VALUES (1, 'Bob','Row',5,'Amazing video!!',1);
INSERT INTO Reviewers VALUES (2, 'Ashley','Asher', 4, 'Wow, this is great.',2);
INSERT INTO Reviewers VALUES (3, 'Robert','Felix',3, 'This is pretty cool!', 3);

select * from Reviewers;

--apply a join to both tables
select * from Videos as v
JOIN Reviewers as r 
ON v.videoid=r.videoid;

--adding additional rows in Reviewers table
INSERT INTO Reviewers VALUES (4, 'Derek','Rye',2, 'Not that interesting...', 1);
INSERT INTO Reviewers VALUES (5, 'Sylvia','Tish',5, 'Cool video!', 2);

--print another joined version of table with videoid only appearing once as a column
SELECT *
FROM reviewers AS r
LEFT JOIN videos AS v
USING (videoid);






