USE VehicleMakesDB
SELECT MIN(Engine_CC) AS MinimumEngineCC, MAX(Engine_CC) AS MaximumEngineCC, AVG(Engine_CC) AS AverageEngineCC
FROM VehicleMasterDetails