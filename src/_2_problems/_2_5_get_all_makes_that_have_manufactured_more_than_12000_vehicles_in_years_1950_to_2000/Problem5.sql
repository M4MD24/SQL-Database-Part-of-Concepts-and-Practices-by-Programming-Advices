USE VehicleMakesDB

SELECT Make, COUNT(Make) AS CountOfVehicles
FROM VehicleMasterDetails
WHERE Year BETWEEN 1950 AND 2000
GROUP BY Make
HAVING COUNT(Make) > 12000

-- OR

SELECT *
FROM (SELECT Make, COUNT(Make) AS CountOfVehicles
      FROM VehicleMasterDetails
      WHERE Year BETWEEN 1950 AND 2000
      GROUP BY Make) AS Main
WHERE CountOfVehicles > 12000