USE VehicleMakesDB

SELECT Make, COUNT(Make) AS CountOfVehicles
FROM VehicleMasterDetails
GROUP BY Make
HAVING COUNT(Make) > 20000
ORDER BY CountOfVehicles DESC