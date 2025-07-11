USE VehicleMakesDB

SELECT COUNT(*) AS TotalFWD_Makes
FROM (SELECT DISTINCT Make, DriveTypeName
      FROM VehicleMasterDetails
      WHERE UPPER(DriveTypeName) = 'FWD') AS FWD_Makes;