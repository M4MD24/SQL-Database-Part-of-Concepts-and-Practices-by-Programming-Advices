USE VehicleMakesDB
SELECT found = 1
WHERE EXISTS (SELECT *
              FROM VehicleMasterDetails
              WHERE Year = 1950)