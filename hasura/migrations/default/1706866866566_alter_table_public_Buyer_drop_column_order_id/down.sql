alter table "public"."Buyer" alter column "order_id" set default nextval('"Buyer_order_id_seq"'::regclass);
alter table "public"."Buyer" add constraint "Buyer_order_id_key" unique (order_id);
alter table "public"."Buyer" alter column "order_id" drop not null;
alter table "public"."Buyer" add column "order_id" int4;
