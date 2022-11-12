with source as (

    select * from {{ source('app_civica', 'user_civicauser') }}

),

renamed as (

    select
        id as user_id,
        last_login,
        is_superuser,
        first_name,
        last_name,
        is_staff,
        is_active,
        date_joined,
        email,
        msal_token,
        address_street,
        country,
        locality,
        number,
        region,
        zip_code,
        phone

    from source

)

select * from renamed