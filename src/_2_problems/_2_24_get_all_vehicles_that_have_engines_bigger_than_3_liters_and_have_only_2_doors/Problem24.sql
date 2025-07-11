USE VehicleMakesDB

SELECT *
FROM VehicleMasterDetails
WHERE Engine_Liter_Display > 3
  AND NumDoors = 2