USE VehicleMakesDB

SELECT DISTINCT Engine_CC,
                CASE
                    WHEN Engine_CC BETWEEN 0 AND 1000
                        THEN 100
                    WHEN Engine_CC BETWEEN 1001 AND 2000
                        THEN 200
                    WHEN Engine_CC BETWEEN 2001 AND 4000
                        THEN 300
                    WHEN Engine_CC BETWEEN 4001 AND 6000
                        THEN 400
                    WHEN Engine_CC BETWEEN 6001 AND 8000
                        THEN 500
                    WHEN Engine_CC > 8000
                        THEN 600
                        ELSE 0
                END AS TasByEngineCC
FROM VehicleMasterDetails
ORDER BY Engine_CC