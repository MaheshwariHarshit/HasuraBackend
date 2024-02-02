alter table "public"."product_variant"
  add constraint "product_variant_product_id_fkey"
  foreign key ("product_id")
  references "public"."product"
  ("id") on update restrict on delete cascade;
