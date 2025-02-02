CREATE DATABASE LibraryDb

GO

USE LibraryDb

CREATE TABLE Contacts
(
	Id INT PRIMARY KEY IDENTITY,
	Email NVARCHAR(100),
	PhoneNumber NVARCHAR(20),
	PostAddress NVARCHAR(200),
	Website NVARCHAR(50)
)

CREATE TABLE Authors
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	ContactId INT REFERENCES Contacts(Id) NOT NULL
)

CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30) NOT NULL
)

CREATE TABLE Books
(
	Id INT PRIMARY KEY IDENTITY,
	Title NVARCHAR(100) NOT NULL,
	YearPublished INT NOT NULL,
	ISBN NVARCHAR(13) NOT NULL UNIQUE,
	AuthorId INT REFERENCES Authors(Id) NOT NULL,
	GenreId INT REFERENCES Genres(Id) NOT NULL
)

CREATE TABLE Libraries
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	ContactId INT REFERENCES Contacts(Id) NOT NULL
)

CREATE TABLE LibrariesBooks
(
	LibraryId INT REFERENCES Libraries(Id),
	BookId INT REFERENCES Books(Id)
	PRIMARY KEY (LibraryId, BookId)
)