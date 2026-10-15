
{% macro day_type(x) %}
    CASE
        WHEN DAYNAME(TO_TIMESTAMP({{ x }})) IN ('Sat', 'Sun')
        THEN 'WEEKEND'
        ELSE 'BUSINESSDAYS'
    END
{% endmacro %}


{% macro function2(a) %}
    CASE
        WHEN MONTH(TO_TIMESTAMP({{ a }})) IN (12, 1, 2)
        THEN 'WINTER'
        WHEN MONTH(TO_TIMESTAMP({{ a }})) IN (3, 4, 5)
        THEN 'SPRING'
        WHEN MONTH(TO_TIMESTAMP({{ a }})) IN (6, 7, 8)
        THEN 'SUMMER'
        ELSE 'AUTUMN'
    END
{% endmacro %}


{% macro function1(x) %}
    CASE
        WHEN TO_TIMESTAMP({{ x }}) < CURRENT_DATE()
        THEN 'PAST'
        ELSE 'FUTURE'
    END
{% endmacro %}
