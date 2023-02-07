CREATE OR REPLACE FUNCTION sum_by_order(orders_row orders)
RETURNS NUMERIC AS $$
  SELECT SUM(p.price * om.amount)
  FROM orders_products as om 
  JOIN goods as p ON om.products_id=p.id
  WHERE order_id=orders_row.id
$$ LANGUAGE sql STABLE;
