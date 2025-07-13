USE VehicleMakesDB

SELECT Makes.Make, COUNT(*) AS CountOfModels
FROM Makes
         INNER JOIN MakeModels
                    ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make
HAVING COUNT(*) = (SELECT MIN(CountOfModels) AS MaximumCountOfModels
                   FROM (SELECT MakeID, COUNT(*) AS CountOfModels
                         FROM MakeModels
                         GROUP BY MakeID) ModelCount)