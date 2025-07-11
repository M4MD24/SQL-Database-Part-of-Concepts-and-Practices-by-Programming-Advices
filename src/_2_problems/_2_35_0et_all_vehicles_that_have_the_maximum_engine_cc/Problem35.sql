USE VehicleMakesDB
SELECT *
FROM VehicleMasterDetails
WHERE Engine_CC = (SELECT MAX(Engine_CC) FROM VehicleMasterDetails)