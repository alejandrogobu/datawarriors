with source as (

    select * from {{ source('app_civica', 'benefit') }}

),

renamed as (

    select
        id as benefit_id,
        scope,
        saving,
        cost,
        unity,
        date_entry,
        date_leaving,
        date_mod,
        des_bnf,
        company_id

    from source

)

select * from renamed