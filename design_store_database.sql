CREATE TABLE gaming_store_inventory (id INTEGER PRIMARY KEY, item TEXT, quantity INTEGER, cost INTEGER, price INTEGER, location TEXT);
INSERT INTO gaming_store_inventory VALUES(1, "card sleeves", 25, 2, 12, "hanging");
INSERT INTO gaming_store_inventory VALUES(2, "deck boxes", 25, 1, 5, "shelf");
INSERT INTO gaming_store_inventory VALUES(3, "commander decks", 10, 10, 40, "shelf");
INSERT INTO gaming_store_inventory VALUES(4, "singles", 200, 2, 6, "display case");
INSERT INTO gaming_store_inventory VALUES(5, "dice sets", 30, 3, 12, "display case");
INSERT INTO gaming_store_inventory VALUES(6, "play mats", 15, 8, 20, "wall display");
INSERT INTO gaming_store_inventory VALUES(7, "card storage boxes", 8, 1, 5, "shelf");
INSERT INTO gaming_store_inventory VALUES(8, "collectable figures", 10, 5, 20, "shelf");
INSERT INTO gaming_store_inventory VALUES(9, "comic books", 50, 2, 10, "comic display");
INSERT INTO gaming_store_inventory VALUES(10, "board games", 20, 5, 25, "shelf");
INSERT INTO gaming_store_inventory VALUES(11, "hats", 12, 4, 20, "hat rack");
INSERT INTO gaming_store_inventory VALUES(12, "t-shirts", 40, 3, 25, "hanger rack");
INSERT INTO gaming_store_inventory VALUES(13, "tabletop minis", 100, 1, 10, "peg wall");
INSERT INTO gaming_store_inventory VALUES(14, "paints", 200, 2, 12, "shelf");
INSERT INTO gaming_store_inventory VALUES(15, "paintbrushes", 500, 1, 5, "brush cups");

SELECT * FROM gaming_store_inventory ORDER BY price;
SELECT SUM(price) - SUM(cost) FROM gaming_store_inventory;
SELECT SUM(quantity) FROM gaming_store_inventory;
SELECT AVG(price) FROM gaming_store_inventory;
