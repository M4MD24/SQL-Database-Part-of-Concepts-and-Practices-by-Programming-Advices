USE VehicleMakesDB
SELECT COUNT(*) AS CountOfVehicles
FROM VehicleMasterDetails
WHERE Year BETWEEN 1950 AND 2000