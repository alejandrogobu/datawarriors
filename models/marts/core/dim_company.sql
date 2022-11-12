with stg_company as (

    select * from {{ ref('stg_company') }}

),

final as (

    select
        company_id,
        name,
        cif,
        date_entry,
        date_leaving,
        cod_cnae,
        des_cnae,
        category,
        subcategory

    from stg_company

)

select * from final