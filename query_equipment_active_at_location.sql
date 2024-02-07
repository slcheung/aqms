-- To query the number of active and inactive equipment
-- in each of the locations
SELECT L.NAME LOCATION,
	COUNT(E.EQUIP_ID) TOTAL_EQUIPMENT,
	COUNT(CASE
			WHEN E.RETIRE_DATE IS NULL THEN 1
		END) ACTIVE_EQUIPMENT,
	COUNT(CASE
			WHEN E.RETIRE_DATE IS NOT NULL THEN 1
		END) INACTIVE_EQUIPMENT
FROM EQUIPMENT E
JOIN EQUIP_LOC EL ON E.EQUIP_ID = EL.EQUIP_ID
JOIN LOC L ON EL.LOC_ID = L.LOC_ID
GROUP BY LOCATION;