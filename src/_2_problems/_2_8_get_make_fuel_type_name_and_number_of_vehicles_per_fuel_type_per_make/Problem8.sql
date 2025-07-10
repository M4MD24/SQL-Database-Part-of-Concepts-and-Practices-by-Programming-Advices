USE VehicleMakesDB

SELECT Make, FuelTypeName, COUNT(*) AS CountOfVehicles
FROM VehicleMasterDetails
GROUP BY Make, FuelTypeName
ORDER BY Make