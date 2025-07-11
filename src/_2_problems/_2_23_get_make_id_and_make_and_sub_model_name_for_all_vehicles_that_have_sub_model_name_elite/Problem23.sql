USE VehicleMakesDB

SELECT DISTINCT VehicleDetails.MakeID, Makes.Make, SubModelName
FROM VehicleDetails
         INNER JOIN SubModels
                    ON VehicleDetails.SubModelID = SubModels.SubModelID
         INNER JOIN Makes
                    ON VehicleDetails.MakeID = Makes.MakeID
WHERE SubModelName = 'Elite'
ORDER BY MakeID;