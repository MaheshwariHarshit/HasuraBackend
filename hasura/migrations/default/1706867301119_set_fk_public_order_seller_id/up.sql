alter table "public"."order"
  add constraint "order_seller_id_fkey"
  foreign key ("seller_id")
  references "public"."seller"
  ("id") on update restrict on delete cascade;
