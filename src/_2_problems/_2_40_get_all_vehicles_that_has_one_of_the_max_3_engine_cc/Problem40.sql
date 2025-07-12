USE VehicleMakesDB

SELECT Vehicle_Display_Name, Engine_CC
FROM VehicleMasterDetails
WHERE Engine_CC IN
      (SELECT DISTINCT TOP 3 Engine_CC
       FROM VehicleMasterDetails
       ORDER BY Engine_CC DESC)
ORDER BY Engine_CC DESC