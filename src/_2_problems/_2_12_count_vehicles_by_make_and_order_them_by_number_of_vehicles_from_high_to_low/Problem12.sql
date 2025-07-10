USE VehicleMakesDB

SELECT Make, COUNT(Make) AS CountOfVehicles
FROM VehicleMasterDetails
GROUP BY Make
ORDER BY CountOfVehicles DESC