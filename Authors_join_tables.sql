/* Create table about the people and what they do here */
CREATE TABLE authors (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, author_id INTEGER);

INSERT INTO authors (first_name, last_name, author_id) 
    VALUES ("Sarah J", "Maas", "1");
INSERT INTO authors (first_name, last_name, author_id) 
    VALUES ("Jeff", "Wheeler", "2");
INSERT INTO authors (first_name, last_name, author_id) 
    VALUES ("Scott", "Lynch", "3");

CREATE TABLE books (id INTEGER PRIMARY KEY, book_title TEXT, year_published INTEGER, author_id INTEGER);

INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Throne of Glass", "2012", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Crown of Midnight", "2013", "1");  
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Heir of Fire", "2014", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Queen of Shadows", "2015", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Empire of Storms", "2016", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Tower of Dawn", "2017", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Kingdom of Ash", "2018", "1");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Fireblood", "2013", "2");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Dryad-Born", "2014", "2");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Poisonwell", "2015", "2");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("The Lies of Locke Lamora", "2006", "3");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("Red Seas Under Red Skies", "2007", "3");
INSERT INTO books (book_title, year_published, author_id) 
    VALUES ("The Republic of Thieves", "2013", "3");
    

CREATE TABLE author_personal (id INTEGER PRIMARY KEY, author_id INTEGER, hometown TEXT, year_born INTEGER, spouse TEXT); 
INSERT INTO author_personal (author_id, hometown, year_born, spouse)
    VALUES ("1", "New York City", "1986", "Josh");
INSERT INTO author_personal (author_id, hometown, year_born, spouse)
    VALUES ("3", "Saint Paul", "1978", "Elisabeth Bear");

SELECT authors.first_name, authors.last_name, books.book_title, author_personal.hometown FROM authors
    JOIN books
    ON authors.id = books.author_id
    LEFT OUTER JOIN author_personal
    ON authors.id= author_personal.author_id;


