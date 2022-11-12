with source as (

    select * from {{ source('app_civica', 'company') }}

),

renamed as (

    select
        id as company_id,
        name,
        cif,
        date_entry,
        date_leaving,
        cod_cnae,
        des_cnae,
        category,
        subcategory,
        user_id,
        offert_id

    from source

)

select * from renamed