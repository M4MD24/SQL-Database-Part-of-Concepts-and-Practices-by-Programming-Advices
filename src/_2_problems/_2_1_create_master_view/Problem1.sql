USE VehicleMakesDB
CREATE VIEW VehicleMasterDetails AS
(
SELECT TOP 100 PERCENT VehicleDetails.ID,
                       VehicleDetails.MakeID,
                       Makes.Make,
                       VehicleDetails.ModelID,
                       MakeModels.ModelName,
                       VehicleDetails.SubModelID,
                       SubModels.SubModelName,
                       VehicleDetails.BodyID,
                       Bodies.BodyName,
                       VehicleDetails.Vehicle_Display_Name,
                       VehicleDetails.Year,
                       VehicleDetails.DriveTypeID,
                       DriveTypes.DriveTypeName,
                       VehicleDetails.Engine,
                       VehicleDetails.Engine_CC,
                       VehicleDetails.Engine_Cylinders,
                       VehicleDetails.Engine_Liter_Display,
                       VehicleDetails.FuelTypeID,
                       FuelTypes.FuelTypeName,
                       VehicleDetails.NumDoors
FROM VehicleDetails
         INNER JOIN
     SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
         INNER JOIN
     MakeModels ON SubModels.ModelID = MakeModels.ModelID
         INNER JOIN
     Makes ON MakeModels.MakeID = Makes.MakeID
         INNER JOIN
     Bodies ON VehicleDetails.BodyID = Bodies.BodyID
         INNER JOIN
     DriveTypes ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
         INNER JOIN
     FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
ORDER BY VehicleDetails.ID
    )
SELECT *
FROM VehicleMasterDetails