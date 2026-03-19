WITH raw_hosts AS (
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)

SELECT
    ID as HOST_ID, 
    NAME as HOST_NAME, 
    IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
FROM raw_hosts