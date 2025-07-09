USE VehicleMakesDB
SELECT *
FROM VehicleMasterDetails
WHERE VehicleMasterDetails.Year BETWEEN 1950 AND 2000
ORDER BY VehicleMasterDetails.Year