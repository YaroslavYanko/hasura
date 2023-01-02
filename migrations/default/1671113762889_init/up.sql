SET check_function_bodies = false;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TABLE public.goods (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    image text NOT NULL,
    "shortName" text NOT NULL,
    title text NOT NULL,
    price numeric NOT NULL,
    description text NOT NULL
);
ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_pkey PRIMARY KEY (id);
