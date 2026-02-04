select
    product_id,

    {% set conversions = {
        "kg": "product_weight_g / 1000",
        "lb": "product_weight_g * 0.00220462"
    } %}

    {% for unit, formula in conversions.items() %}
        {{ formula }} as product_weight_{{ unit }}{% if not loop.last %},{% endif %}
    {% endfor %}

from {{ ref('first_stage') }}
