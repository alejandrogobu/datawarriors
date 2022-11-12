with stg_offert as (

    select * from {{ ref('stg_offert') }}

),

stg_company as (

    select * from {{ ref('stg_company')}}
),


final as (

    select
        A.offert_id,
        A.company_name,
        A.cif,
        A.des,
        A.type_of,
        A.date_entry,
        A.date_mod,
        A.date_resolved,
        A.user_id,
        B.company_id
    from stg_offert A
    inner join stg_company B on  A.offert_id = B.offert_id
)

select * from final