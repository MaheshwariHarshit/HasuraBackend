alter table "public"."order"
  add constraint "order_product_id_fkey"
  foreign key ("product_id")
  references "public"."product"
  ("id") on update restrict on delete cascade;
