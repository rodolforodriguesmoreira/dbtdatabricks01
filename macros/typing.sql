{% macro cast_int(col) -%}
    CAST(SPLIT({{ col }}, '\\.')[0] AS BIGINT)
{%- endmacro %}

{% macro cast_decimal(col) -%}
    CAST(REPLACE({{ col }}, ',', '.') AS DOUBLE)
{%- endmacro %}

{% macro cast_timestamp(col, fmt) -%}
    TO_TIMESTAMP({{ col }}, '{{ fmt }}')
{%- endmacro %}

{% macro cast_date(col, fmt) -%}
    TO_DATE({{ col }}, '{{ fmt }}')
{%- endmacro %}