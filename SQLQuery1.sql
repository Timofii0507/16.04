USE Hospital_1;
GO

INSERT INTO Departments (Building, Name)
VALUES (1, '³������� 1'), (2, '³������� 2');

INSERT INTO Doctors (Name, Premium, Salary, Surname)
VALUES ('��� 1', 1000, 5000, '������� 1'), ('��� 2', 2000, 6000, '������� 2');

INSERT INTO Examinations (Name)
VALUES ('���������� 1'), ('���������� 2');

INSERT INTO Wards (Name, Places, DepartmentId)
VALUES ('������ 1', 20, 1), ('������ 2', 30, 2);

INSERT INTO DoctorsExaminations (EndTime, StartTime, DoctorId, ExaminationId, WardId)
VALUES ('18:00:00', '08:00:00', 1, 1, 1), ('18:00:00', '08:00:00', 2, 2, 2);