select * from user;
select * from course;

-- Inner Join
SELECT u.name as userName, c.name as courseName
  FROM user u
  JOIN course c 
    on u.courseid = c.id;
    
-- another way to join data, but don't do it!!!    
SELECT u.name as userName, c.name as courseName
  FROM user u, course c
 WHERE u.courseid = c.ID;
    
    
    

select user.name as UserName, course.name as CourseName
from user, course
 where user.courseid = course.id;

-- Left Join
SELECT user.name, course.name
FROM user
LEFT JOIN course on user.courseid = course.id;

-- Right Join
SELECT user.name, course.name
FROM `user`
RIGHT JOIN `course` on user.courseid = course.id;

-- Union (because MySQL doesn't implement OUTER JOIN)
SELECT user.name, course.name
FROM `user`
LEFT JOIN `course` on user.courseid = course.id

UNION

SELECT user.name, course.name
FROM `user`
RIGHT JOIN `course` on user.courseid = course.id;

-- Get all students without a course assignment
select * from user
 where courseid is null;

-- Get all courses without a student assignment
select * from course
 where id not in 
	(select distinct(courseid) from user where courseid is not null);

select distinct(courseid) from user
   where courseid is not null;
