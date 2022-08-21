{%- macro cent_2_dollar(amount_in_cent, floatnum=1) %}
    ROUND({{ amount_in_cent }}/100, {{ floatnum }})
{%- endmacro %}