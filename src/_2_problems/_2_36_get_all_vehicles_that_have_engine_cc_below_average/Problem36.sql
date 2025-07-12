USE VehicleMakesDB
SELECT *
FROM VehicleMasterDetails
WHERE Engine_CC < (SELECT AVG(Engine_CC) FROM VehicleMasterDetails)