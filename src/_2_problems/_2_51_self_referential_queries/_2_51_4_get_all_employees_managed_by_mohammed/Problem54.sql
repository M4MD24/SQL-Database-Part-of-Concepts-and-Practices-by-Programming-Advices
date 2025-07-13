USE EmployeesDB

SELECT Employees.EmployeeID,
       Employees.Name,
       Employees.ManagerID,
       Managers.Name AS ManagerName
FROM Employees
         LEFT JOIN Employees AS Managers
                   ON Employees.ManagerID = Managers.EmployeeID
WHERE Managers.Name = 'Mohammed'