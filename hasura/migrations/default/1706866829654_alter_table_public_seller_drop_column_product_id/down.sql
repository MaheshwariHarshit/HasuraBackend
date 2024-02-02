alter table "public"."seller" alter column "product_id" set default nextval('seller_product_id_seq'::regclass);
alter table "public"."seller" add constraint "seller_product_id_key" unique (product_id);
alter table "public"."seller"
  add constraint "seller_product_id_fkey"
  foreign key (product_id)
  references "public"."product"
  (id) on update restrict on delete cascade;
alter table "public"."seller" alter column "product_id" drop not null;
alter table "public"."seller" add column "product_id" int4;
