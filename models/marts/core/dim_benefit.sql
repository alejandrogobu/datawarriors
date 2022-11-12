with stg_benefit as (

    select * from {{ ref('stg_benefit') }}

),

renamed as (

    select
        benefit_id,
        scope,
        saving,
        cost,
        unity,
        date_entry,
        date_leaving,
        date_mod,
        des_bnf,
        company_id

    from stg_benefit

)

select * from renamed