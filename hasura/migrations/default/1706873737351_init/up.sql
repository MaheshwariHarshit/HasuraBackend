SET check_function_bodies = false;
CREATE TABLE public."Buyer" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    address text NOT NULL,
    contact text NOT NULL,
    password text NOT NULL
);
CREATE SEQUENCE public."Buyer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."Buyer_id_seq" OWNED BY public."Buyer".id;
CREATE TABLE public."order" (
    id integer NOT NULL,
    quantity integer NOT NULL,
    total_price integer NOT NULL,
    buyer_id integer NOT NULL,
    seller_id integer NOT NULL,
    product_id integer NOT NULL
);
CREATE SEQUENCE public.order_buyer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.order_buyer_id_seq OWNED BY public."order".buyer_id;
CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
CREATE SEQUENCE public.order_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.order_product_id_seq OWNED BY public."order".product_id;
CREATE SEQUENCE public.order_seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.order_seller_id_seq OWNED BY public."order".seller_id;
CREATE TABLE public.product (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    category text NOT NULL,
    seller_id integer NOT NULL
);
CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
CREATE SEQUENCE public.product_seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.product_seller_id_seq OWNED BY public.product.seller_id;
CREATE TABLE public.product_variant (
    id integer NOT NULL,
    variant_name text NOT NULL,
    price numeric NOT NULL,
    inventory_count integer NOT NULL,
    product_id integer NOT NULL
);
CREATE SEQUENCE public.product_variant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.product_variant_id_seq OWNED BY public.product_variant.id;
CREATE SEQUENCE public.product_variant_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.product_variant_product_id_seq OWNED BY public.product_variant.product_id;
CREATE TABLE public.seller (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
CREATE SEQUENCE public.seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.seller_id_seq OWNED BY public.seller.id;
ALTER TABLE ONLY public."Buyer" ALTER COLUMN id SET DEFAULT nextval('public."Buyer_id_seq"'::regclass);
ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
ALTER TABLE ONLY public."order" ALTER COLUMN buyer_id SET DEFAULT nextval('public.order_buyer_id_seq'::regclass);
ALTER TABLE ONLY public."order" ALTER COLUMN seller_id SET DEFAULT nextval('public.order_seller_id_seq'::regclass);
ALTER TABLE ONLY public."order" ALTER COLUMN product_id SET DEFAULT nextval('public.order_product_id_seq'::regclass);
ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
ALTER TABLE ONLY public.product ALTER COLUMN seller_id SET DEFAULT nextval('public.product_seller_id_seq'::regclass);
ALTER TABLE ONLY public.product_variant ALTER COLUMN id SET DEFAULT nextval('public.product_variant_id_seq'::regclass);
ALTER TABLE ONLY public.product_variant ALTER COLUMN product_id SET DEFAULT nextval('public.product_variant_product_id_seq'::regclass);
ALTER TABLE ONLY public.seller ALTER COLUMN id SET DEFAULT nextval('public.seller_id_seq'::regclass);
ALTER TABLE ONLY public."Buyer"
    ADD CONSTRAINT "Buyer_pkey" PRIMARY KEY (id);
ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_product_id_key UNIQUE (product_id);
ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_id_key UNIQUE (id);
ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_buyer_id_fkey FOREIGN KEY (buyer_id) REFERENCES public."Buyer"(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.seller(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.seller(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT product_variant_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE RESTRICT ON DELETE CASCADE;
