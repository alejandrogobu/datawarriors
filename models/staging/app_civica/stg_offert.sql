with source as (

    select * from {{ source('app_civica', 'offert') }}

),

renamed as (

    select
        id as offert_id,
        company_name,
        cif,
        des,
        type_of,
        date_entry,
        date_mod,
        date_resolved,
        user_id

    from source

)

select * from renamed