-- Your SQL for question 2

DROP TABLE IF EXISTS act;
DROP TABLE IF EXISTS direct;
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS company;

CREATE TABLE actor
(
    fname    VARCHAR(50) not null,
    lname    VARCHAR(50) not null,
#     description VARCHAR(50) not null,
    DOB      DATE        not null,
    actor_id INT         NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (actor_id)


);

CREATE TABLE genre
(
    genre_name  VARCHAR(50) not null,
    description VARCHAR(50) not null,


    PRIMARY KEY (genre_name)

);



CREATE TABLE company
(
    company_name VARCHAR(50) not null,
    addresses    VARCHAR(50) not null,
    company_id   int         not null auto_increment,

    PRIMARY KEY (company_id)


);


CREATE TABLE directors
(
    direct_fname VARCHAR(50) not null,
    direct_lname VARCHAR(50) not null,
    DOB          DATE        NOT NULL,
    director_id  int         not null auto_increment,

    PRIMARY KEY (director_id)


);


CREATE TABLE films
(
    titles     VARCHAR(50) not null,
    length     INT         not null,
    year       int         not null,
    plots      CHAR(100)   not null,
    genre_id   VARCHAR(50) not null,
    company_id int         not null,


    PRIMARY KEY (titles),
    foreign key (genre_id) references genre (genre_name),
    foreign key (company_id) references company (company_id)

);



CREATE TABLE act
(
    actor  INT         not null,
    movies VARCHAR(50) not null,
    PRIMARY KEY (actor, movies),
    FOREIGN KEY (actor) references actor (actor_id),
    FOREIGN KEY (movies) references films (titles)

);


CREATE TABLE direct
(
    films     varchar(50),
    directors Int not null,
    PRIMARY KEY (films, directors),
    FOREIGN KEY (films) references films (titles),
    FOREIGN KEY (directors) references directors (director_id)
);



INSERT INTO actor(fname, lname, DOB)
VALUES ('aa', 'Jan', '1999-11-11'),
       ('bb', 'Feb', '1999-11-12'),
       ('cc', 'Mar', '1999-11-13'),
       ('dd', 'April', '1999-11-14'),
       ('ee', 'May', '1999-11-15'),
       ('ff', 'June', '1999-11-16');


INSERT INTO genre(genre_name, description)
VALUES ('horror', 'horror'),
       ('romanic', 'roman'),
       ('comedy', 'comedy');

INSERT INTO company(company_name, addresses)
VALUES ('one', 'road1'),
       ('two', 'road2'),
       ('three', 'road3'),
       ('four', 'road4'),
       ('five', 'road5');

INSERT INTO directors(direct_fname, direct_lname, DOB)
VALUES ('afhjkadf', 'gbsjeg', '1997-11-11'),
       ('bajjf', 'gsfdga', '1997-11-12'),
       ('cfahs', 'ragre', '1997-11-13'),
       ('dajg', 'jyt', '1997-1-14'),
       ('esfsjkdg', 'fghdfj', '1997-11-15');

INSERT INTO films(titles, length, year, plots, genre_id, company_id)
values ('title1', 90, 1990, 'good', 'horror', 1),
       ('title2', 110, 1991, 'poor', 'horror', 3),
       ('title3', 95, 1992, 'average', 'romanic', 5),
       ('title4', 92, 1993, 'good', 'romanic', 1),
       ('title5', 93, 1994, 'good', 'horror', 2),
       ('title6', 77, 1995, 'average', 'romanic', 2),
       ('title7', 69, 1996, 'good', 'horror', 3),
       ('title8', 150, 1996, 'good', 'romanic', 3),
       ('title9', 90, 1995, 'poor', 'comedy', 4),
       ('title10', 125, 1994, 'poor', 'romanic', 4),
       ('title11', 90, 1993, 'good', 'comedy', 2),
       ('title12', 130, 1992, 'good', 'horror', 1);



INSERT INTO direct(films, directors)
VALUES ('title1', 1),
       ('title2', 2),
       ('title3', 3),
       ('title4', 4),
       ('title5', 5),
       ('title6', 1);




INSERT INTO act(actor, movies)
VALUES (1, 'title1'),
       (2, 'title10'),
       (3, 'title6'),
       (4, 'title7'),
       (5, 'title8'),
       (6, 'title9'),
       (1, 'title9');













