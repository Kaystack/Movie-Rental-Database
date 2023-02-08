CREATE DATABASE Movies;

-- Creating tables for the database(MovieS)
USE Movies;
CREATE TABLE Movie(
  MovieID INTEGER PRIMARY KEY,
  Title TEXT NOT NULL,
  Director TEXT NOT NULL,
  ReleaseDate TEXT NOT NULL,
  RunningTime INTEGER NOT NULL
)

CREATE TABLE Patron (
  PatronID INTEGER PRIMARY KEY,
  Name TEXT NOT NULL,
  Email TEXT NOT NULL,
  Phone TEXT NOT NULL
);

CREATE TABLE RentalRecord (
  MovieID INTEGER NOT NULL,
  PatronID INTEGER NOT NULL,
  RentalDate TEXT NOT NULL,
  ReturnDate TEXT,
  FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
  FOREIGN KEY (PatronID) REFERENCES Patron (PatronID),
  PRIMARY KEY (MovieID, PatronID)
);

--Populate the database with data
INSERT INTO Movie (MovieID, Title, Director, ReleaseDate, RunningTime)
VALUES
  (1, 'The Shawshank Redemption', 'Frank Darabont', '1994-09-14', 142),
  (2, 'The Godfather', 'Francis Ford Coppola', '1972-03-24', 175);

INSERT INTO Patron (PatronID, Name, Email, Phone)
VALUES
  (1, 'Jane Doe', 'jane.doe@example.com', '555-555-1212'),
  (2, 'John Doe', 'john.doe@example.com', '555-555-1212');

INSERT INTO RentalRecord (MovieID, PatronID, RentalDate, ReturnDate)
VALUES
  (1, 1, '2022-01-01', '2022-01-07'),
  (2, 1, '2022-02-01', '2022-02-07');

--Testing the database
SELECT Movie.Title, RentalRecord.RentalDate, RentalRecord.ReturnDate
FROM Movie
JOIN RentalRecord ON Movie.MovieID = RentalRecord.MovieID
WHERE RentalRecord.PatronID = 1;
