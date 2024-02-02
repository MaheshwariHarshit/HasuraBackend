alter table "public"."Buyer"
  add constraint "Buyer_order_id_fkey"
  foreign key ("order_id")
  references "public"."order"
  ("id") on update restrict on delete cascade;
