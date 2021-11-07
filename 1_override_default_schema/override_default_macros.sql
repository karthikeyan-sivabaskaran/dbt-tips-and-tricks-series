-- By default, custom schema name will be combined with target.schema name
-- Override this schema to based on requirements

{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}
    
    {%- if custom_schema_name is none -%}
        {{ default_schema }}
        {{ log("Setting Default Schema: {0}".format(target.schema)) }}
    {%- else -%}
        {{ custom_schema_name | trim }}
        {{ log("Setting Custom Schema: {0}".format(custom_schema_name | trim)) }}
    {%- endif -%}

{%- endmacro %}
