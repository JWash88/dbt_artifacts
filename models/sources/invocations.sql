/* Bigquery won't let us `where` without `from` so we use this workaround */
with
    dummy_cte as (

        select 1 as foo

    )

select
    cast('' as {{ type_string() }}) as command_invocation_id
    , cast('' as {{ type_string() }}) as dbt_version
    , cast('' as {{ type_string() }}) as project_name
    , cast('' as {{ type_timestamp() }}) as run_started_at
    , cast('' as {{ type_string() }}) as dbt_command
    , cast('' as {{ type_boolean() }}) as full_refresh_flag
    , cast('' as {{ type_string() }}) as target_profile_name
    , cast('' as {{ type_string() }}) as target_name
    , cast('' as {{ type_string() }}) as target_schema
    , cast('' as {{ type_int() }}) as target_threads
    , cast('' as {{ type_string() }}) as dbt_cloud_project_id
    , cast('' as {{ type_string() }}) as dbt_cloud_job_id
    , cast('' as {{ type_string() }}) as dbt_cloud_run_id
    , cast('' as {{ type_string() }}) as dbt_cloud_run_reason_category
    , cast('' as {{ type_string() }}) as dbt_cloud_run_reason
    , cast('' as {{ type_json() }}) as env_vars
    , cast('' as {{ type_json() }}) as dbt_vars
    , cast('' as {{ type_json() }}) as invocation_args
    , cast('' as {{ type_json() }}) as dbt_custom_envs
from dummy_cte
where 1 = 0
