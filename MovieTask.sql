Create Database MoviesTask
Use MoviesTask
Create table Movie (
    Id int primary key IDENTITY,
    Name nvarchar(50)
)

Create table IMDBs (
    Id int primary key IDENTITY,
    [Value] decimal,
    MovieId int references Movie(Id)
)
Create table Genres (
    Id int primary key IDENTITY,
    Name NVARCHAR(50)
)
Create table GenreMovies (
    Id int primary key IDENTITY,
    GenreId int references  Genres(Id),
    MovieId int references  Movie(Id)
)
Create table  Actors (
    Id int primary key IDENTITY,
    Name nvarchar(50),
    Surname nvarchar(50),
    Age int
)
Create table MovieActors (
    Id int primary key IDENTITY,
    MovieId int references  Movie(Id),
    ActorId int references  Actors(Id)
)

insert into Movie (Name) values
('Oppenheimer'),
('Interstellar'),
('Charlie''s Chocolate Factory')

insert into IMDBs ([Value], MovieId) values
(8.3, 1),
(8.7, 2),
(6.7, 3)

insert into Genres (Name) values
('Drama'),
('Science Fiction'),
('Thriller'),
('Crime Fiction'),
('Comedy'),
('Fantasy'),
('Adventure')

insert into Actors (Name, Surname, Age) values
('Cillian', 'Murphy', 48),
('Matthew', 'McConaughey', 55),
('Johnny', 'Depp', 61),
('Freddie', 'Highmore', 29)

select * from Actors
select * from Genres
select * from IMDBs
select m.Id,m.Name,I.Value as [IMDB Values]
from Movie as m
left join IMDBs as I
on
m.Id=I.MovieId





