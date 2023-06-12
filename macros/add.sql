{%- macro add(table_name, column_name, legacy=False) -%}

{{config(
   tags="pg" if not legacy else "legacy_pg"
)}}

with _table as (

    select * from {{ ref(table_name) }}

)

select {{ column_name }} 
  from _table

{%- endmacro -%}



-- SELECT * {% if target.name != 'test' -%}
--  EXCEPT (_fivetran_deleted, _fivetran_synced)
-- {% endif -%}

-- FROM
-- {% if not legacy -%}
-- {{ source('pg_fivetran_raw_public', table_name) }}
-- {% else -%}
-- {{ source('pg_fivetran_raw_public_legacy', table_name) }}
-- {% endif -%}

-- {%- if target.name != 'test' %}
-- WHERE NOT _fivetran_deleted
-- {%- endif -%}

-- {%- endmacro -%}

-- with payments as (

--     select * from {{ ref("stg_payments") }}

-- )

-- select payment_id,
--        amount,
--        {{ add('amount', 'amount') }} as double_amount
--   from payments


