alter table "public"."product" alter column "variant_id" set default nextval('product_variant_id_seq1'::regclass);
alter table "public"."product" add constraint "product_variant_id_key" unique (variant_id);
alter table "public"."product" alter column "variant_id" drop not null;
alter table "public"."product" add column "variant_id" int4;
