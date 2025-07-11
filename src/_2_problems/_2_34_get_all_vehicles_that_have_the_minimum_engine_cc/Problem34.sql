USE VehicleMakesDB
SELECT *
FROM VehicleMasterDetails
WHERE Engine_CC = (SELECT MIN(Engine_CC) FROM VehicleMasterDetails)