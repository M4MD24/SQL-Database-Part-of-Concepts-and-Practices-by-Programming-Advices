USE VehicleMakesDB

SELECT COUNT(*) AS TotalVehicles, DriveTypeName, Make
FROM VehicleMasterDetails
GROUP BY DriveTypeName, Make
HAVING COUNT(*) > 10000
ORDER BY Make, TotalVehicles DESC