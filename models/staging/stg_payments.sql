{% call set_sql_header(config) %}
    CREATE OR REPLACE TEMP MACRO add(a, b) AS a + b;
{%- endcall %}

with source as (
    
    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

),

foo as (

    select *, payment_id as foobar_id from renamed 

)

select * from renamed
