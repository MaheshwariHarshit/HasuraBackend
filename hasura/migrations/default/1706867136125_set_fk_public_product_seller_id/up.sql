alter table "public"."product"
  add constraint "product_seller_id_fkey"
  foreign key ("seller_id")
  references "public"."seller"
  ("id") on update restrict on delete cascade;
