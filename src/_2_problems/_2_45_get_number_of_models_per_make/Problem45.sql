USE VehicleMakesDB

SELECT Makes.Make, COUNT(*) AS CountOfModels
FROM Makes
         INNER JOIN MakeModels
                    ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make
ORDER BY CountOfModels DESC