{%macros run_dml_operation() %}
{% set sql%}
update SOURCE.HR.SRC_EMPLOYEES set first_name = 'ttt' where EMPLOYEE_ID = 102;
{% endset%}
{% do run_sql(sql)%}
{% endmacros %}