alter table "public"."seller"
  add constraint "seller_product_id_fkey"
  foreign key ("product_id")
  references "public"."product"
  ("id") on update restrict on delete cascade;
