USE VehicleMakesDB

SELECT MAX(NumberOfModels) AS MaxNumberOfModels
FROM (SELECT Makes.Make, COUNT(*) AS NumberOfModels
      FROM Makes
               INNER JOIN MakeModels
                          ON Makes.MakeID = MakeModels.MakeID
      GROUP BY Makes.Make) ModelNumbers