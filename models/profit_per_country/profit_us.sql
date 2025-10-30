{{ config(materialized='table') }}

{{ generate_profit_model('sales_us') }}