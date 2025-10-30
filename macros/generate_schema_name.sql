{% macro generate_profit_model(table_name) %}
    SELECT
        sales_date,
        SUM(quantity_sold * unit_sell_price) as TotalRevenue,
        SUM(quantity_sold * unit_purchase_cost) as TotalCost,
        SUM(quantity_sold * unit_sell_price) - SUM(quantity_sold * unit_purchase_cost) as TotalProfit
    FROM
        {{ source('landing', table_name)}}
    GROUP BY sales_date
{% endmacro %}