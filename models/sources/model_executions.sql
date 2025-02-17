/* Bigquery won't let us `where` without `from` so we use this workaround */
with dummy_cte as (select 1 as foo)

select
    cast('' as {{ type_string() }}) as command_invocation_id,
    cast('' as {{ type_string() }}) as node_id,
    cast('' as {{ type_timestamp() }}) as run_started_at,
    cast('' as {{ type_boolean() }}) as was_full_refresh,
    cast('' as {{ type_string() }}) as thread_id,
    cast('' as {{ type_string() }}) as status,
    cast('' as {{ type_timestamp() }}) as compile_started_at,
    cast('' as {{ type_timestamp() }}) as query_completed_at,
    cast('' as {{ type_float() }}) as total_node_runtime,
    cast('' as {{ type_int() }}) as rows_affected,
    {% if target.type == "bigquery" %}
        cast('' as {{ type_int() }}) as bytes_processed,
    {% endif %}
    cast('' as {{ type_string() }}) as materialization,
    cast('' as {{ type_string() }}) as {% if target.type == "sqlserver" %} "schema"
    {% else %} schema
    {% endif %},
    cast('' as {{ type_string() }}) as name,
    cast('' as {{ type_string() }}) as alias,
    cast('' as {{ type_string() }}) as message,
    cast('' as {{ type_json() }}) as adapter_response
from dummy_cte
where 1 = 0

