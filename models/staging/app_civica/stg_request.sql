with source as (

    select * from {{ source('app_civica', 'request') }}

),

renamed as (

    select
        id as request_id,
        date,
        benefit_id,
        user_id

    from source

)

select * from renamed