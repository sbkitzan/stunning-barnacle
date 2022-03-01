/* What does the app's SQL look like? */

CREATE TABLE reviews (id INTEGER PRIMARY KEY, user_id TEXT, date TEXT, time NUMERIC, content TEXT);
    INSERT INTO reviews (user_id, date, time, content)
        VALUES ("crazy girl", "February 22, 2022", "16:48", "Had such a great time here last night!");
    INSERT INTO reviews (user_id, date, time, content)
        VALUES ("lucky guy", "January 20, 2022", "15:32", "The servers were very nice and helpful");
    INSERT INTO reviews (user_id, date, time, content)
        VALUES ("greedy granny", "December 17, 2021", "12:28", "My lunch was cold and the service wasn't great, either");
        
SELECT * FROM reviews;

UPDATE reviews SET content = "The service was really good and I enjoyed my lunch" WHERE id = 3;

SELECT * FROM reviews;

DELETE FROM reviews WHERE id = 2;

SELECT * FROM reviews;
