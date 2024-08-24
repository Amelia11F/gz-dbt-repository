with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select orders_id
    ,shipping_fee
    ,logCost AS log_cost
    ,ship_cost


    from source

)

select * from renamed
