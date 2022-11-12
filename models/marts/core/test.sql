WITH test AS (
    SELECT *
    FROM {{ source('app_civica','django_content_type') }}
    )

select * from test