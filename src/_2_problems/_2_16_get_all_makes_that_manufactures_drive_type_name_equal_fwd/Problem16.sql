USE VehicleMakesDB

SELECT DISTINCT Make, DriveTypeName
FROM VehicleMasterDetails
WHERE DriveTypeName = 'FWD'
ORDER BY Make