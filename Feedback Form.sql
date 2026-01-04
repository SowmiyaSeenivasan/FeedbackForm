create database FeedbackForm;

use FeedbackForm;

CREATE TABLE Feedback (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Rating NVARCHAR(20),
    Comments NVARCHAR(MAX)
);