USE [HM]

INSERT INTO Faculties (Id, Name) VALUES (1, 'Faculty1');
INSERT INTO Departments (Id, Financing, Name, FacultyId) VALUES (1, 10000, 'Department1', 1);
INSERT INTO Groups (Id, Name, Year, DepartmentId) VALUES (1, 'Group1', 1, 1);
INSERT INTO Teachers (Id, Name, Salary, Surname) VALUES (1, 'Teacher1', 5000, 'Surname1');
INSERT INTO Subjects (Id, Name) VALUES (1, 'Subject1');
INSERT INTO Lectures (Id, DayOfWeek, LectureRoom, SubjectId, TeacherId) VALUES (1, 1, 'Room1', 1, 1);
INSERT INTO GroupsLectures (Id, GroupId, LectureId) VALUES (1, 1, 1);
