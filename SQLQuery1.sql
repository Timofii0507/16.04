CREATE DATABASE Hospital_1;
GO
USE Hospital_1;
GO

CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Building INT NOT NULL,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Doctors (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(MAX) NOT NULL,
    Premium MONEY NOT NULL,
    Salary MONEY NOT NULL,
    Surname NVARCHAR(MAX) NOT NULL
);

CREATE TABLE Examinations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Wards (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(20) NOT NULL,
    Places INT NOT NULL,
    DepartmentId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);

CREATE TABLE DoctorsExaminations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    EndTime TIME NOT NULL,
    StartTime TIME NOT NULL,
    DoctorId INT NOT NULL,
    ExaminationId INT NOT NULL,
    WardId INT NOT NULL,
    FOREIGN KEY (DoctorId) REFERENCES Doctors(Id),
    FOREIGN KEY (ExaminationId) REFERENCES Examinations(Id),
    FOREIGN KEY (WardId) REFERENCES Wards(Id)
);