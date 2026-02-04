select 	
product_id,
product
 from {{ source('mytable','ecommerce') }}
