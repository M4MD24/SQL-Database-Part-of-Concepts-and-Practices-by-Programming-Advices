USE VehicleMakesDB

SELECT *
FROM VehicleMasterDetails
WHERE BodyName = 'Coupe'
   OR BodyName = 'Hatchback'
   OR BodyName = 'Sedan'