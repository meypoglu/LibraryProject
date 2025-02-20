PGDMP       .                |            library    16.3    16.3 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25233    library    DATABASE     �   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE library;
                postgres    false            �            1259    25520    authors    TABLE     �   CREATE TABLE public.authors (
    author_date date NOT NULL,
    author_id integer NOT NULL,
    author_country character varying(255) NOT NULL,
    author_name character varying(255) NOT NULL
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    25519    authors_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.authors_author_id_seq;
       public          postgres    false    216            �           0    0    authors_author_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;
          public          postgres    false    215            �            1259    25529    books    TABLE     �   CREATE TABLE public.books (
    author_id integer,
    book_date date NOT NULL,
    book_id integer NOT NULL,
    book_stock integer NOT NULL,
    publisher_id integer,
    book_name character varying(255) NOT NULL
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    25528    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public          postgres    false    218            �           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
          public          postgres    false    217            �            1259    25536    booktocategory    TABLE     g   CREATE TABLE public.booktocategory (
    book_id integer NOT NULL,
    category_id integer NOT NULL
);
 "   DROP TABLE public.booktocategory;
       public         heap    postgres    false            �            1259    25535    booktocategory_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.booktocategory_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.booktocategory_book_id_seq;
       public          postgres    false    220            �           0    0    booktocategory_book_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.booktocategory_book_id_seq OWNED BY public.booktocategory.book_id;
          public          postgres    false    219            �            1259    25542    borrows    TABLE     �   CREATE TABLE public.borrows (
    book_borrow_id integer NOT NULL,
    book_id integer NOT NULL,
    borrow_date date NOT NULL,
    borrow_return_date date NOT NULL,
    borrow_name character varying(255) NOT NULL
);
    DROP TABLE public.borrows;
       public         heap    postgres    false            �            1259    25540    borrows_book_borrow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.borrows_book_borrow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.borrows_book_borrow_id_seq;
       public          postgres    false    223            �           0    0    borrows_book_borrow_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.borrows_book_borrow_id_seq OWNED BY public.borrows.book_borrow_id;
          public          postgres    false    221            �            1259    25541    borrows_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.borrows_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.borrows_book_id_seq;
       public          postgres    false    223            �           0    0    borrows_book_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.borrows_book_id_seq OWNED BY public.borrows.book_id;
          public          postgres    false    222            �            1259    25550 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_description character varying(255) NOT NULL,
    category_name character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    25549    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public          postgres    false    225            �           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public          postgres    false    224            �            1259    25559 
   publishers    TABLE     �   CREATE TABLE public.publishers (
    publisher_date date NOT NULL,
    publisher_id integer NOT NULL,
    publisher_address character varying(255) NOT NULL,
    publisher_name character varying(255) NOT NULL
);
    DROP TABLE public.publishers;
       public         heap    postgres    false            �            1259    25558    publishers_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publishers_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.publishers_publisher_id_seq;
       public          postgres    false    227            �           0    0    publishers_publisher_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.publishers_publisher_id_seq OWNED BY public.publishers.publisher_id;
          public          postgres    false    226            4           2604    25523    authors author_id    DEFAULT     v   ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);
 @   ALTER TABLE public.authors ALTER COLUMN author_id DROP DEFAULT;
       public          postgres    false    216    215    216            5           2604    25532    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    217    218    218            6           2604    25539    booktocategory book_id    DEFAULT     �   ALTER TABLE ONLY public.booktocategory ALTER COLUMN book_id SET DEFAULT nextval('public.booktocategory_book_id_seq'::regclass);
 E   ALTER TABLE public.booktocategory ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    219    220    220            7           2604    25545    borrows book_borrow_id    DEFAULT     �   ALTER TABLE ONLY public.borrows ALTER COLUMN book_borrow_id SET DEFAULT nextval('public.borrows_book_borrow_id_seq'::regclass);
 E   ALTER TABLE public.borrows ALTER COLUMN book_borrow_id DROP DEFAULT;
       public          postgres    false    221    223    223            8           2604    25546    borrows book_id    DEFAULT     r   ALTER TABLE ONLY public.borrows ALTER COLUMN book_id SET DEFAULT nextval('public.borrows_book_id_seq'::regclass);
 >   ALTER TABLE public.borrows ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    222    223    223            9           2604    25553    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    224    225    225            :           2604    25562    publishers publisher_id    DEFAULT     �   ALTER TABLE ONLY public.publishers ALTER COLUMN publisher_id SET DEFAULT nextval('public.publishers_publisher_id_seq'::regclass);
 F   ALTER TABLE public.publishers ALTER COLUMN publisher_id DROP DEFAULT;
       public          postgres    false    227    226    227            �          0    25520    authors 
   TABLE DATA           V   COPY public.authors (author_date, author_id, author_country, author_name) FROM stdin;
    public          postgres    false    216   �>       �          0    25529    books 
   TABLE DATA           c   COPY public.books (author_id, book_date, book_id, book_stock, publisher_id, book_name) FROM stdin;
    public          postgres    false    218   0?       �          0    25536    booktocategory 
   TABLE DATA           >   COPY public.booktocategory (book_id, category_id) FROM stdin;
    public          postgres    false    220   t?       �          0    25542    borrows 
   TABLE DATA           h   COPY public.borrows (book_borrow_id, book_id, borrow_date, borrow_return_date, borrow_name) FROM stdin;
    public          postgres    false    223   �?       �          0    25550 
   categories 
   TABLE DATA           V   COPY public.categories (category_id, category_description, category_name) FROM stdin;
    public          postgres    false    225   �?       �          0    25559 
   publishers 
   TABLE DATA           e   COPY public.publishers (publisher_date, publisher_id, publisher_address, publisher_name) FROM stdin;
    public          postgres    false    227   @       �           0    0    authors_author_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.authors_author_id_seq', 1, true);
          public          postgres    false    215            �           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 1, true);
          public          postgres    false    217            �           0    0    booktocategory_book_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.booktocategory_book_id_seq', 1, false);
          public          postgres    false    219            �           0    0    borrows_book_borrow_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.borrows_book_borrow_id_seq', 1, true);
          public          postgres    false    221            �           0    0    borrows_book_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.borrows_book_id_seq', 1, false);
          public          postgres    false    222            �           0    0    categories_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_category_id_seq', 1, true);
          public          postgres    false    224            �           0    0    publishers_publisher_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.publishers_publisher_id_seq', 1, true);
          public          postgres    false    226            <           2606    25527    authors authors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    216            >           2606    25534    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    218            @           2606    25548    borrows borrows_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.borrows
    ADD CONSTRAINT borrows_pkey PRIMARY KEY (book_borrow_id);
 >   ALTER TABLE ONLY public.borrows DROP CONSTRAINT borrows_pkey;
       public            postgres    false    223            B           2606    25557    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    225            D           2606    25566    publishers publishers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (publisher_id);
 D   ALTER TABLE ONLY public.publishers DROP CONSTRAINT publishers_pkey;
       public            postgres    false    227            I           2606    25587 #   borrows fk8789wjikihu9ocbhamiw789y9    FK CONSTRAINT     �   ALTER TABLE ONLY public.borrows
    ADD CONSTRAINT fk8789wjikihu9ocbhamiw789y9 FOREIGN KEY (book_id) REFERENCES public.books(book_id);
 M   ALTER TABLE ONLY public.borrows DROP CONSTRAINT fk8789wjikihu9ocbhamiw789y9;
       public          postgres    false    4670    223    218            E           2606    25572 !   books fkayy5edfrqnegqj3882nce6qo8    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT fkayy5edfrqnegqj3882nce6qo8 FOREIGN KEY (publisher_id) REFERENCES public.publishers(publisher_id);
 K   ALTER TABLE ONLY public.books DROP CONSTRAINT fkayy5edfrqnegqj3882nce6qo8;
       public          postgres    false    4676    218    227            F           2606    25567 !   books fkfjixh2vym2cvfj3ufxj91jem7    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT fkfjixh2vym2cvfj3ufxj91jem7 FOREIGN KEY (author_id) REFERENCES public.authors(author_id);
 K   ALTER TABLE ONLY public.books DROP CONSTRAINT fkfjixh2vym2cvfj3ufxj91jem7;
       public          postgres    false    216    4668    218            G           2606    25577 *   booktocategory fkniub9jjc4b2qwvqa3ns9k3fi4    FK CONSTRAINT     �   ALTER TABLE ONLY public.booktocategory
    ADD CONSTRAINT fkniub9jjc4b2qwvqa3ns9k3fi4 FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 T   ALTER TABLE ONLY public.booktocategory DROP CONSTRAINT fkniub9jjc4b2qwvqa3ns9k3fi4;
       public          postgres    false    220    225    4674            H           2606    25582 *   booktocategory fkreuewemuvko5bd3rdyfyyl748    FK CONSTRAINT     �   ALTER TABLE ONLY public.booktocategory
    ADD CONSTRAINT fkreuewemuvko5bd3rdyfyyl748 FOREIGN KEY (book_id) REFERENCES public.books(book_id);
 T   ALTER TABLE ONLY public.booktocategory DROP CONSTRAINT fkreuewemuvko5bd3rdyfyyl748;
       public          postgres    false    4670    218    220            �   2   x�3�47�50�54�4�9��(;�2��%5/57UB���S����� A�[      �   4   x�3�4�47�50�56�4�4b�Լ��Լ�<���ԢĜĢ#�b���� �HQ      �      x�3�4����� ]      �   *   x�3�4�4202�50�54�3�,9]R��*�dv>W� �
      �   1   x�3�tI�K�M���VH<�������Ĝ�"��B��=E��p��qqq ��[      �   :   x�3�47�50�54�B#c�Լ��T�����lN('2���Ƽ�#s�l������ ���     