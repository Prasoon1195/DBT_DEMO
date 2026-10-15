
WITH CTE AS (
    SELECT
        TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
        TO_DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
        HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,

        {{ day_type('STARTED_AT') }} AS DAY_TYPE,

        {{ function2('STARTED_AT') }} AS SEASON,

        {{ function1('STARTED_AT') }} AS DATE_STATUS

    FROM {{ source('demo', 'bike') }}
    WHERE STARTED_AT != 'started_at'
)

SELECT *
FROM CTE
