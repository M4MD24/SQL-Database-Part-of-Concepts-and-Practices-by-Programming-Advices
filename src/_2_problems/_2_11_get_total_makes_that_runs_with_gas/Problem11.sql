USE VehicleMakesDB

SELECT COUNT(*) AS TotalGasPowered
FROM (SELECT DISTINCT Make, FuelTypeName
      FROM VehicleMasterDetails
      WHERE UPPER(FuelTypeName) = N'GAS') AS TotalMakes