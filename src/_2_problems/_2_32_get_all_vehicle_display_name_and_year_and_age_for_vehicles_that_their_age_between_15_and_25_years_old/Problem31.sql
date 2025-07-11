USE VehicleMakesDB
SELECT *
FROM (SELECT Vehicle_Display_Name, Year, Age = YEAR(GETDATE()) - Year
      FROM VehicleMasterDetails) VehicleAges
WHERE Age BETWEEN 15 AND 25