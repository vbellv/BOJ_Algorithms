SELECT 
    CAR_ID, 
    ROUND(AVG(DATEDIFF(DATE_FORMAT(END_DATE, '%Y-%m-%d'), DATE_FORMAT(START_DATE, '%Y-%m-%d')) + 1), 1) AS AVERAGE_DURATION 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;