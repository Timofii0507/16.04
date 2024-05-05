USE Hospital_1;
GO

INSERT INTO Departments (Building, Name)
VALUES (1, 'Відділення 1'), (2, 'Відділення 2');

INSERT INTO Doctors (Name, Premium, Salary, Surname)
VALUES ('Ім’я 1', 1000, 5000, 'Прізвище 1'), ('Ім’я 2', 2000, 6000, 'Прізвище 2');

INSERT INTO Examinations (Name)
VALUES ('Обстеження 1'), ('Обстеження 2');

INSERT INTO Wards (Name, Places, DepartmentId)
VALUES ('Палата 1', 20, 1), ('Палата 2', 30, 2);

INSERT INTO DoctorsExaminations (EndTime, StartTime, DoctorId, ExaminationId, WardId)
VALUES ('18:00:00', '08:00:00', 1, 1, 1), ('18:00:00', '08:00:00', 2, 2, 2);