USE VehicleMakesDB

SELECT COUNT(*) AS TotalVehicles, DriveTypeName, Make
FROM VehicleMasterDetails
GROUP BY DriveTypeName, Make
ORDER BY Make, TotalVehicles DESC