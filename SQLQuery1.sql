USE [HM]

-- Query 1: Count of teachers in the "Software Development" department
SELECT COUNT(*) FROM Teachers WHERE Id IN (
    SELECT TeacherId FROM Lectures WHERE Id IN (
        SELECT LectureId FROM GroupsLectures WHERE GroupId IN (
            SELECT Id FROM Groups WHERE DepartmentId IN (
                SELECT Id FROM Departments WHERE Name = 'Software Development'
            )
        )
    )
);

-- Query 2: Count of lectures given by "Dave McQueen"
SELECT COUNT(*) FROM Lectures WHERE TeacherId = (
    SELECT Id FROM Teachers WHERE Name = 'Dave McQueen'
);

-- Query 3: Count of lectures in room "D201"
SELECT COUNT(*) FROM Lectures WHERE LectureRoom = 'D201';

-- Запит 4
SELECT LectureRoom, COUNT(*) AS LectureCount
FROM Lectures
GROUP BY LectureRoom;

-- Запит 5
SELECT COUNT(*) AS StudentCount
FROM GroupsLectures
WHERE LectureId IN (
    SELECT Id
    FROM Lectures
    WHERE TeacherId = (
        SELECT Id
        FROM Teachers
        WHERE Name = 'Jack' AND Surname = 'Underhill'
    )
);

-- Запит 6
SELECT AVG(Salary) AS AverageSalary
FROM Teachers
WHERE Id IN (
    SELECT TeacherId
    FROM Lectures
    WHERE Id IN (
        SELECT LectureId
        FROM GroupsLectures
        WHERE GroupId IN (
            SELECT Id
            FROM Groups
            WHERE DepartmentId IN (
                SELECT Id
                FROM Departments
                WHERE FacultyId IN (
                    SELECT Id
                    FROM Faculties
                    WHERE Name = 'Computer Science'
                )
            )
        )
    )
);

-- Запит 7
SELECT MIN(StudentCount) AS MinStudentCount, MAX(StudentCount) AS MaxStudentCount
FROM (
    SELECT COUNT(*) AS StudentCount
    FROM GroupsLectures
    GROUP BY GroupId
) AS StudentCounts;

-- Запит 8
SELECT AVG(Financing) AS AverageFinancing
FROM Departments;

-- Запит 9
SELECT DayOfWeek, COUNT(*) AS LectureCount
FROM Lectures
GROUP BY DayOfWeek;

-- Запит 10
SELECT LectureRoom, COUNT(DISTINCT DepartmentId) AS DepartmentCount
FROM Lectures
JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
JOIN Groups ON GroupsLectures.GroupId = Groups.Id
GROUP BY LectureRoom;

-- Запит 11
SELECT Faculties.Name, COUNT(DISTINCT Subjects.Id) AS SubjectCount
FROM Faculties
JOIN Departments ON Faculties.Id = Departments.FacultyId
JOIN Groups ON Departments.Id = Groups.DepartmentId
JOIN GroupsLectures ON Groups.Id = GroupsLectures.GroupId
JOIN Lectures ON GroupsLectures.LectureId = Lectures.Id
JOIN Subjects ON Lectures.SubjectId = Subjects.Id
GROUP BY Faculties.Name;

-- Запит 12
SELECT TeacherId, LectureRoom, COUNT(*) AS LectureCount
FROM Lectures
GROUP BY TeacherId, LectureRoom;
