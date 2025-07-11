USE VehicleMakesDB

SELECT CAST(
               (SELECT COUNT(*) AS TotalWithNoSpecifiedDoors
                FROM VehicleDetails
                WHERE NumDoors IS NULL) AS FLOAT
       ) /
       CAST(
               (SELECT COUNT(*)
                FROM VehicleDetails) AS FLOAT
       ) AS PercentageOfNoSpecifiedDoors