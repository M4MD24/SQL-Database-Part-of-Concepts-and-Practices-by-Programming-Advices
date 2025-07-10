USE VehicleMakesDB

SELECT Make, COUNT(Make) AS CountOfVehicles, (SELECT COUNT(*) FROM VehicleMasterDetails AS TotalVehicles) AS TotalVehicles
FROM VehicleMasterDetails
WHERE Year BETWEEN 1950 AND 2000
GROUP BY Make