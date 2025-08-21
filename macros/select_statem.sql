{% macro select_state(par,day_after) %}
where joining > dateadd({{par}},{{day_after}},current_date)
{{ log('executed successful',info=True )}}
{% endmacro %}