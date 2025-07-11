USE VehicleMakesDB
SELECT Vehicle_Display_Name,
       NumDoors,
       CASE
           WHEN NumDoors = 0
               THEN 'Zero'
           WHEN NumDoors = 1
               THEN 'One'
           WHEN NumDoors = 2
               THEN 'Two'
           WHEN NumDoors = 3
               THEN 'Three'
           WHEN NumDoors = 4
               THEN 'Four'
           WHEN NumDoors = 5
               THEN 'Five'
           WHEN NumDoors = 6
               THEN 'Six'
           WHEN NumDoors = 8
               THEN 'Eight'
           WHEN NumDoors IS NULL
               THEN 'Not Set'
               ELSE 'Unknown'
       END AS DoorDesciption
FROM VehicleMasterDetails
GROUP BY Vehicle_Display_Name, NumDoors