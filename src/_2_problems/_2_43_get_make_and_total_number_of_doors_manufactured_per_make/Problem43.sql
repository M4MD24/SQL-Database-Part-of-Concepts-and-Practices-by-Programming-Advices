USE VehicleMakesDB

SELECT Make, SUM(NumDoors) AS TotalCountOfDoors
FROM VehicleMasterDetails
GROUP BY Make
ORDER BY TotalCountOfDoors DESC