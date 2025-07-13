USE EmployeesDB

SELECT Employees.EmployeeID,
       Employees.Name,
       Employees.ManagerID,
       CASE
           WHEN Managers.Name IS NOT NULL
               THEN Managers.Name
               ELSE Employees.Name
       END AS ManagerName
FROM Employees
         LEFT JOIN Employees AS Managers
                   ON Employees.ManagerID = Managers.EmployeeID