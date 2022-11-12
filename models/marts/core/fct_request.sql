with stg_request as (

    select * from {{ ref('stg_request') }}

),

final as (

    select
        request_id,
        date,
        benefit_id,
        user_id

    from stg_request

)

select * from final