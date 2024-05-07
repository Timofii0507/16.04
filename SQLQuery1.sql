CREATE DATABASE [HM]
GO
USE [HM]
GO

CREATE TABLE Faculties (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Departments (
    Id INT PRIMARY KEY,
    Financing MONEY NOT NULL DEFAULT 0 CHECK (Financing >= 0),
    Name NVARCHAR(100) NOT NULL,
    FacultyId INT,
    FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
);

CREATE TABLE Groups (
    Id INT PRIMARY KEY,
    Name NVARCHAR(10) NOT NULL,
    Year INT CHECK (Year BETWEEN 1 AND 5),
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);

CREATE TABLE Teachers (
    Id INT PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL,
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL
);

CREATE TABLE Subjects (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Lectures (
    Id INT PRIMARY KEY,
    DayOfWeek INT CHECK (DayOfWeek BETWEEN 1 AND 7),
    LectureRoom NVARCHAR(MAX) NOT NULL,
    SubjectId INT,
    TeacherId INT,
    FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
    FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
);

CREATE TABLE GroupsLectures (
    Id INT PRIMARY KEY,
    GroupId INT,
    LectureId INT,
    FOREIGN KEY (GroupId) REFERENCES Groups(Id),
    FOREIGN KEY (LectureId) REFERENCES Lectures(Id)
);
