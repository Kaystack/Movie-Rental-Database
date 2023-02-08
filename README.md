# Movie-Rental-Database
This is a database designed to keep track of movie rentals at a video store. The database consists of three tables: Movie, Patron, and RentalRecord.
The Movie table contains information about the movies available for rental, such as the MovieID, Title, Director, ReleaseDate, and RunningTime.

The Patron table contains information about the store patrons, including their PatronID, Name, Email, and Phone.

The RentalRecord table links the movies and patrons and keeps track of the rental transactions. It includes the MovieID, PatronID, RentalDate, and ReturnDate.

#Installation and Usage
To recreate the database, simply run the movies database.sql script in your SQL server. The script contains the CREATE TABLE statements and sample data inserts.

You can test the database by running various SQL queries. For example, the following query retrieves the list of movies rented by a particular patron:
SELECT Movie.Title, RentalRecord.RentalDate, RentalRecord.ReturnDate
FROM Movie
JOIN RentalRecord ON Movie.MovieID = RentalRecord.MovieID
WHERE RentalRecord.PatronID = 1;

#Technologies Used
This project was built using SQL and tested on the MySQL server.

#Contributions
Contributions are welcome! If you find any bugs or have suggestions for improvements, please feel free to open an issue or create a pull request.

#License
This project is licensed under the MIT License. See the LICENSE file for more information.
