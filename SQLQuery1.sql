USE Hospital_1;

SELECT COUNT(*) FROM Wards WHERE Places > 10;

SELECT D.Building, COUNT(W.Id) 
FROM Departments D 
JOIN Wards W ON D.Id = W.DepartmentId 
GROUP BY D.Building;

SELECT D.Name, COUNT(W.Id) 
FROM Departments D 
JOIN Wards W ON D.Id = W.DepartmentId 
GROUP BY D.Name;

SELECT D.Name, SUM(Do.Premium) 
FROM Departments D 
JOIN Wards W ON D.Id = W.DepartmentId 
JOIN DoctorsExaminations DE ON W.Id = DE.WardId 
JOIN Doctors Do ON DE.DoctorId = Do.Id 
GROUP BY D.Name;

SELECT D.Name 
FROM Departments D 
JOIN Wards W ON D.Id = W.DepartmentId 
JOIN DoctorsExaminations DE ON W.Id = DE.WardId 
GROUP BY D.Name 
HAVING COUNT(DISTINCT DE.DoctorId) >= 5;

SELECT COUNT(*), SUM(Salary + Premium) 
FROM Doctors;

SELECT AVG(Salary + Premium) 
FROM Doctors;

SELECT Name 
FROM Wards 
WHERE Places = (SELECT MIN(Places) FROM Wards);

SELECT D.Building 
FROM Departments D 
JOIN Wards W ON D.Id = W.DepartmentId 
WHERE D.Building IN (1, 6, 7, 8) AND W.Places > 10 
GROUP BY D.Building 
HAVING SUM(W.Places) > 100;
