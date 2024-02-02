alter table "public"."order"
  add constraint "order_buyer_id_fkey"
  foreign key ("buyer_id")
  references "public"."Buyer"
  ("id") on update restrict on delete cascade;
