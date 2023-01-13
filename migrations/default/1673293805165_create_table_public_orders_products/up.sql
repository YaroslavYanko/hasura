CREATE TABLE "public"."orders_products" ("order_id" uuid NOT NULL, "products_id" uuid NOT NULL, "id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
