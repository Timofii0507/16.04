USE [HM]

-- Вставка даних у таблицю Faculties
INSERT INTO Faculties (Id, Name)
VALUES (3, 'Computer Science'), (4, 'Software Engineering');

-- Вставка даних у таблицю Departments
INSERT INTO Departments (Id, Financing, Name, FacultyId)
VALUES (5, 10000, 'Software Development', 3), (6, 8000, 'Data Science', 4);

-- Вставка даних у таблицю Groups
INSERT INTO Groups (Id, Name, Year, DepartmentId)
VALUES (7, 'CS-1', 1, 5), (8, 'SE-1', 1, 6);

-- Вставка даних у таблицю Subjects
INSERT INTO Subjects (Id, Name)
VALUES (9, 'Mathematics'), (10, 'Programming'), (11, 'Data Structures');

-- Вставка даних у таблицю Teachers
INSERT INTO Teachers (Id, Name, Salary, Surname)
VALUES (12, 'Dave', 2000, 'McQueen'), (13, 'Jack', 2500, 'Underhill');

-- Вставка даних у таблицю Lectures
INSERT INTO Lectures (Id, DayOfWeek, LectureRoom, SubjectId, TeacherId)
VALUES (14, 1, 'D201', 9, 12), (15, 2, 'D202', 10, 13), (16, 3, 'D203', 11, 12);

-- Вставка даних у таблицю GroupsLectures
INSERT INTO GroupsLectures (Id, GroupId, LectureId)
VALUES (17, 7, 14), (18, 7, 15), (19, 8, 16);
