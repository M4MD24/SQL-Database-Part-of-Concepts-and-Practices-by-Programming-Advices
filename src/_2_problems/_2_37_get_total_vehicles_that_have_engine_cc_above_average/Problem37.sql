USE VehicleMakesDB
SELECT COUNT(*)
FROM (SELECT *
      FROM VehicleMasterDetails
      WHERE Engine_CC > (SELECT AVG(Engine_CC) FROM VehicleMasterDetails)) AS AverageVehicles