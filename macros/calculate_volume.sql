{% macro calculate_volume(length, width, height) %}
    ({{ length }} * {{ width }} * {{ height }})
{% endmacro %}
