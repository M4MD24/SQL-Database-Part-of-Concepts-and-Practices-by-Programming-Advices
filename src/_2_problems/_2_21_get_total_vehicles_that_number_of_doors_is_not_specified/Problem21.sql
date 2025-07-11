USE VehicleMakesDB

SELECT COUNT(*) AS TotalWithNoSpecifiedDoors
FROM VehicleMasterDetails
WHERE NumDoors IS NULL