{% macro print_mes(name,design) %}
select 'Hai hello {{name}}, your designation was {{design}}' as message
{% endmacro %}