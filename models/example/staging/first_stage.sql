select *,product_name_lenght*product_description_lenght as lenght 
from {{ source('mytable', 'ecommerce') }}