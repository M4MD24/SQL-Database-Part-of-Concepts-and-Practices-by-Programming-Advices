USE VehicleMakesDB

SELECT Make, SUM(NumDoors) AS TotalCountOfDoors
FROM VehicleMasterDetails
WHERE Make = 'Ford'
GROUP BY Make