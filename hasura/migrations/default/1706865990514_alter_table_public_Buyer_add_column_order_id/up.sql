alter table "public"."Buyer" add column "order_id" serial
 not null unique;
