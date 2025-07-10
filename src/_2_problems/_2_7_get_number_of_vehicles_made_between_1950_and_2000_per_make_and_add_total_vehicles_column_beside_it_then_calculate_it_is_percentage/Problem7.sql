USE VehicleMakesDB

SELECT *, (CAST(CountOfVehicles AS FLOAT) / CAST(TotalVehicles AS FLOAT)) AS Percentage
FROM (SELECT Make, COUNT(Make) AS CountOfVehicles, (SELECT COUNT(*) FROM VehicleMasterDetails AS TotalVehicles) AS TotalVehicles
      FROM VehicleMasterDetails
      WHERE YEAR BETWEEN 1950 AND 2000
      GROUP BY Make) MakeCounts