select
    product_id,
    product_category_name,
    {{ calculate_volume(
        'product_length_cm',
        'product_width_cm',
        'product_height_cm'
    ) }} as product_volume_cm3
from {{ ref('first_stage') }}
