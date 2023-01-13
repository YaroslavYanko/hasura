CREATE OR REPLACE VIEW "public"."last_week_orders" AS 
 SELECT date(timezone('Europe/Kiev'::text, o.created_at)) AS date,
    sum(sum_by_order(o.*)) AS sum,
    count(o.created_at) AS count
   FROM orders o
  WHERE (date(timezone('Europe/Kiev'::text, o.created_at)) > (now() - '7 days'::interval))
  GROUP BY (date(timezone('Europe/Kiev'::text, o.created_at)))
  ORDER BY (date(timezone('Europe/Kiev'::text, o.created_at))) DESC;
