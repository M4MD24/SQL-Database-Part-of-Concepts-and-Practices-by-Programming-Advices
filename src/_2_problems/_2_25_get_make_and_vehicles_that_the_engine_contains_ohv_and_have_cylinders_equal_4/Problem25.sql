USE VehicleMakesDB

SELECT Make, Engine, Engine_Cylinders
FROM VehicleMasterDetails
WHERE Engine LIKE '%OHV%'
  AND Engine_Cylinders = 4