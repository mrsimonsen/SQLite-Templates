PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Artists(
ArtistId    INTEGER PRIMARY KEY,
ArtistName  TEXT NOT NULL
, Bio TEXT);
INSERT INTO Artists VALUES(1,'Joe Satriani',NULL);
INSERT INTO Artists VALUES(2,'Steve Vai',NULL);
INSERT INTO Artists VALUES(3,'The Tea Party',NULL);
INSERT INTO Artists VALUES(4,'Noiseworks',NULL);
INSERT INTO Artists VALUES(5,'Wayne Jury',NULL);
INSERT INTO Artists VALUES(6,'Mr Percival',NULL);
INSERT INTO Artists VALUES(7,'Iron Maiden',NULL);
INSERT INTO Artists VALUES(8,'Atmasphere','Australian jazz ban centered around polyrhythms.');
INSERT INTO Artists VALUES(9,'Ian Moss',NULL);
INSERT INTO Artists VALUES(10,'Magnum',NULL);
INSERT INTO Artists VALUES(11,'Strapping Young Lad',NULL);
INSERT INTO Artists VALUES(13,'Primus',NULL);
INSERT INTO Artists VALUES(14,'Pat Metheny',NULL);
INSERT INTO Artists VALUES(15,'Frank Gambale',NULL);
INSERT INTO Artists VALUES(16,'Mothers of Invention',NULL);
CREATE TABLE Albums(
  AlbumId     INTEGER PRIMARY KEY, 
  AlbumName   TEXT NOT NULL,
  ReleaseDate TEXT,
  ArtistId INTEGER NOT NULL,
  FOREIGN KEY(ArtistId) REFERENCES Artists(ArtistId)
);
INSERT INTO Albums VALUES(1,'Killers','1981',7);
INSERT INTO Albums VALUES(2,'Powerslave','1984',7);
INSERT INTO Albums VALUES(3,'Surfing with the Alien','1987',1);
INSERT INTO Albums VALUES(4,'Heavy as a Really Heavy Thing','1995',11);
INSERT INTO Albums VALUES(6,'Out of the Loop','2007',6);
INSERT INTO Albums VALUES(7,'Suck on This','1989',13);
INSERT INTO Albums VALUES(8,'Pork Soda','1993',13);
INSERT INTO Albums VALUES(9,'Sailing the Seas of Cheese','1991',13);
INSERT INTO Albums VALUES(10,'Flying in a Blue Dream','1989',1);
INSERT INTO Albums VALUES(11,'Black Swans and Wormhole Wizards','2010',1);
INSERT INTO Albums VALUES(12,'Somewhere in Time','1986',7);
CREATE TABLE Albums2(
  AlbumId INT,
  AlbumName TEXT,
  ArtistId INT
);
INSERT INTO Albums2 VALUES(1,'Killers',7);
INSERT INTO Albums2 VALUES(2,'Powerslave',7);
INSERT INTO Albums2 VALUES(3,'Surfing with the Alien',1);
INSERT INTO Albums2 VALUES(4,'Heavy as a Really Heavy Thing',11);
INSERT INTO Albums2 VALUES(5,'Yummy Yummy',17);
INSERT INTO Albums2 VALUES(6,'Out of the Loop',6);
INSERT INTO Albums2 VALUES(7,'Suck on This',13);
INSERT INTO Albums2 VALUES(8,'Pork Soda',13);
INSERT INTO Albums2 VALUES(9,'Sailing the Seas of Cheese',13);
INSERT INTO Albums2 VALUES(10,'Flying in a Blue Dream',1);
INSERT INTO Albums2 VALUES(11,'Black Swans and Wormhole Wizards',1);
INSERT INTO Albums2 VALUES(12,'Somewhere in Time',7);
INSERT INTO Albums2 VALUES(13,'Big Red Car',17);
CREATE TABLE Catalog(
  "AlbumId" TEXT,
  "AlbumName" TEXT,
  "ArtistName" TEXT
);
INSERT INTO Catalog VALUES('1','Killers','Iron Maiden');
INSERT INTO Catalog VALUES('2','Powerslave','Iron Maiden');
INSERT INTO Catalog VALUES('12','Somewhere in Time','Iron Maiden');
INSERT INTO Catalog VALUES('3','Surfing with the Alien','Joe Satriani');
INSERT INTO Catalog VALUES('10','Flying in a Blue Dream','Joe Satriani');
INSERT INTO Catalog VALUES('11','Black Swans and Wormhole Wizards','Joe Satriani');
INSERT INTO Catalog VALUES('6','Out of the Loop','Mr Percival');
INSERT INTO Catalog VALUES('7','Suck on This','Primus');
INSERT INTO Catalog VALUES('8','Pork Soda','Primus');
INSERT INTO Catalog VALUES('9','Sailing the Seas of Cheese','Primus');
INSERT INTO Catalog VALUES('4','Heavy as a Really Heavy Thing','Strapping Young Lad');
CREATE TABLE Genres(
GenreId Integer Primary Key,
Genre Text Not Null
);
INSERT INTO Genres VALUES(1,'Rock');
INSERT INTO Genres VALUES(2,'Country');
INSERT INTO Genres VALUES(3,'Pop');
INSERT INTO Genres VALUES(4,'Comedy');
INSERT INTO Genres VALUES(5,'Jazz');
INSERT INTO Genres VALUES(6,'Blues');
INSERT INTO Genres VALUES(7,'Techno');
COMMIT;
