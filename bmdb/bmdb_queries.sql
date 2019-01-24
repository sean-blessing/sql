Select * from Movie;

insert into movie
values(3,'Spiderman Into the Spiderverse', 2018);

update movie
 set title = 'Spiderman: Into the Spiderverse'
 where id = 3;
 
select m.Title, m.Year, a.FirstName, a.LastName, c.CharacterName
  from movie m, actor a, credits c
 where m.ID = c.MovieID
   and a.ID = c.ActorID;
 
select m.Title, m.Year, a.FirstName, a.LastName, c.CharacterName
  from credits c
  join actor a on a.id = c.actorid
  join movie m on m.id = c.movieid