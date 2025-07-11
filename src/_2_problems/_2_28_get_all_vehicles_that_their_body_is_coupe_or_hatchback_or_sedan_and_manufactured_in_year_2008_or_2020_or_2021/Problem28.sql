USE VehicleMakesDB

SELECT *
FROM VehicleMasterDetails
WHERE BodyName IN ('Coupe', 'Hatchback', 'Sedan')
  AND Year IN (2008, 2020, 2021)