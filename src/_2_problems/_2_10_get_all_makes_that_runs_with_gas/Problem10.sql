USE VehicleMakesDB

-- With Distinct
SELECT DISTINCT Make, FuelTypeName
FROM VehicleMasterDetails
WHERE FuelTypeName = N'GAS'
ORDER BY Make

-- OR

-- With Group By
SELECT Make, FuelTypeName
FROM VehicleMasterDetails
WHERE FuelTypeName = N'GAS'
GROUP BY Make, FuelTypeName
ORDER BY Make