USE VehicleMakesDB
SELECT Vehicle_Display_Name, Year, Age = YEAR(GETDATE()) - Year
FROM VehicleMasterDetails
ORDER BY Age DESC