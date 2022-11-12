with stg_users as (

    select * from {{ ref('stg_users') }}

),

final as (

    select
        user_id,
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

    from stg_users

)

select * from final